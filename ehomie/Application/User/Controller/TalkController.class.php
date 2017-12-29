<?php
// +----------------------------------------------------------------------
// | OpenCMF [ Simple Efficient Excellent ]
// +----------------------------------------------------------------------
// | Copyright (c) 2014 http://www.opencmf.cn All rights reserved.
// +----------------------------------------------------------------------
// | Author: jry <598821125@qq.com>
// +----------------------------------------------------------------------
namespace User\Controller;
use Home\Controller\HomeController;
use Common\Util\Think\Page;
/**
 * 私信控制器
 * @author jry <598821125@qq.com>
 */
class TalkController extends HomeController {
    /**
     * 初始化方法
     * @author jry <598821125@qq.com>
     */
    protected function _initialize(){
        parent::_initialize();
        $this->is_login();
    }

    /**
     * 默认方法
     * @author jry <598821125@qq.com>
     */
    public function index($to_uid) {
        // 获取对话信息
        $uid = $this->is_login();
        if ($to_uid === $uid) {
            $this->error('自己不能与自己对话');
        }
        $con['status']   = 1;
        $con['_string']  = "(to_uid = $to_uid AND from_uid = $uid) OR (to_uid = $uid AND from_uid = $to_uid AND is_read = 1)";
        $talk_list = D('Talk')->where($con)->page($_GET['p'] ? : 1, 10)->order('create_time desc,id desc')->limit(20)->select();

        // 模板变量赋值
        $to_user_info = get_user_info($to_uid);
        $this->assign('talk_list', array_reverse($talk_list));
        $this->assign('to_user_info', $to_user_info);
        $this->assign('meta_title', '与'.$to_user_info['nickname'].'对话');
        $this->display();
    }

    /**
     * 私信列表
     * @author jry <598821125@qq.com>
     */
    public function lists() {
        // 获取对话信息
        $uid = $this->is_login();
        $map = array();
        $map['status'] = 1;
        $map['uids'] = array(
                            'like',
                            array(
                                $uid.',%',
                                '%,'.$uid.',%',
                                '%,'.$uid
                            ),
                            'OR'
                        );
        $talk_object = D('Talk');
        $talk_recent_object = D('TalkRecent');
        $recent_list = $talk_recent_object->where($map)->order('update_time desc, id desc')->select();
        foreach ($recent_list as $key => &$val) {
            $uids = explode(',', $val['uids']);
            $map = array();
            $map['status'] = 1;
            $map['id']     = array('eq', $val['data_id']);
            $last_talk = $talk_object->where($map)->find();
            if ($last_talk) {
                // 此处处理最后一条消息是自己发给对方还是对方发给自己
                if ($uid !== $last_talk['from_uid']) {
                    $val['to_uid'] = $last_talk['from_uid'];
                } else {
                    $val['to_uid'] = $last_talk['to_uid'];
                }
            } else {
                if ($uids[0] === $uid) {
                    $val['to_uid'] = $uids[1];
                } else {
                    $val['to_uid'] = $uids[0];
                }
            }

            // 最新消息内容
            $val['to_nickname'] = get_user_info($val['to_uid'], 'nickname');
            $val['to_avatar_url'] = get_user_info($val['to_uid'], 'avatar_url');
            $val['message'] = $val['message'];
            $val['create_time_format'] = time_format($val['create_time']);

            // 获取新消息书数量
            $map = array();
            $map['from_uid'] = $val['to_uid'];
            $map['to_uid']   = $uid ;
            $map['is_read']  = 0;
            $val['new_message_count'] = $talk_object->where($map)->count();
        }

        // 模板变量赋值
        $this->assign('recent_list', $recent_list);
        $this->assign('meta_title', '私信列表');
        $this->display();
    }

    /**
     * 获取新消息
     * @author jry <598821125@qq.com>
     */
    public function getNewMessage($to_uid) {
        $uid = $this->is_login();
        $con['status']   = 1;
        $con['is_read']  = 0;
        $con['to_uid']   = array('eq', $uid);
        $con['from_uid'] = array('eq', $to_uid);
        $talk_object = D('Talk');
        $talk_list_ids = $talk_object->where($con)->order('create_time desc,id desc')->getField('id', true);
        $talk_list = $talk_object->where($con)->order('create_time desc,id desc')->select();
        if ($talk_list_ids) {
            $this->setRead($talk_list_ids);
        }
        if ($talk_list) {
            $return['status'] = 1;
            $return['info'] = '获取成功';
            $return['data'] = $talk_list;
            $return['to_user_info'] = get_user_info($to_uid);
        } else {
            $return['status'] = 0;
            $return['info'] = '获取失败';
        }
        $this->ajaxReturn($return);
    }

    /**
     * 设置已读
     * @param $type 消息类型
     * @author jry <598821125@qq.com>
     */
    public function setRead($ids) {
        D('User/Talk')->setRead($ids);
    }

    /**
     * 发送消息
     * @author jry <598821125@qq.com>
     */
    public function add() {
        if (I('to_uid') === is_login()) {
            $this->error('自己不能与自己对话');
        }
        $talk_object = D('Talk');
        $result = $talk_object->sendMessage($_POST);
        if ($result) {
            $this->success('发送成功');
        } else {
            $this->error($talk_object->getError());
        }
    }
}
