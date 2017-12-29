<?php
// +----------------------------------------------------------------------
// | OpenCMF [ Simple Efficient Excellent ]
// +----------------------------------------------------------------------
// | Copyright (c) 2014 http://www.opencmf.cn All rights reserved.
// +----------------------------------------------------------------------
// | Author: jry <598821125@qq.com>
// +----------------------------------------------------------------------
namespace User\Model;
use Think\Model;
/**
 * 私信模型
 * @author jry <598821125@qq.com>
 */
class TalkModel extends Model {
    /**
     * 数据库表名
     * @author jry <598821125@qq.com>
     */
    protected $tableName = 'user_talk';

    /**
     * 自动验证规则
     * @author jry <598821125@qq.com>
     */
    protected $_validate = array(
        array('to_uid','require','缺少收信人', self::MUST_VALIDATE, 'regex', self::MODEL_BOTH),
        array('message','require','请输入消息', self::MUST_VALIDATE, 'regex', self::MODEL_BOTH),
    );

    /**
     * 自动完成规则
     * @author jry <598821125@qq.com>
     */
    protected $_auto = array(
        array('from_uid', 'is_login', self::MODEL_INSERT, 'function'),
        array('is_read', '0', self::MODEL_INSERT),
        array('is_pushed', '0', self::MODEL_INSERT),
        array('create_time', 'time', self::MODEL_INSERT, 'function'),
        array('update_time', 'time', self::MODEL_BOTH, 'function'),
        array('sort', '0', self::MODEL_INSERT),
        array('status', '1', self::MODEL_INSERT),
    );

    /**
     * 查找后置操作
     * @author jry <598821125@qq.com>
     */
    protected function _after_find(&$result, $options) {
        $result['user'] = get_user_info($result['from_uid']);
        $result['create_time_format'] = time_format($result['create_time'], 'Y-m-d H:i:s');
    }

    /**
     * 查找后置操作
     * @author jry <598821125@qq.com>
     */
    protected function _after_select(&$result, $options) {
        foreach($result as &$record){
            $this->_after_find($record, $options);
        }
    }

    /**
     * 发送私信
     * @author jry <598821125@qq.com>
     */
    public function sendMessage($send_data) {
        $msg_data['to_uid']   = $send_data['to_uid']; //消息收信人ID
        $msg_data['message']  = $send_data['message'] ? : ''; //消息内容
        $data = $this->create($msg_data);
        if($data){
            $result = $this->add($data);
            if (!$result) {
                 $this->error = '发送失败';
            }

            // 生成最新聊天记录列表
            $uid = is_login();
            if ($uid !== $data['to_uid']) {
                $recent_object = D('TalkRecent');
                $con = array();
                $con['uids'] = array(
                                'in',
                                array(
                                    $data['to_uid'].','.$uid,
                                    $uid.','.$data['to_uid']
                                )
                            );
                $status = $recent_object->where($con)->find();
                $con['data_id'] = $result;
                $con['status']  = 1;
                $con['uids']    = $uid.','.$send_data['to_uid'];
                $con_data = $recent_object->create($con);
                if ($status && $status['data_id'] !== $con['data_id']) {
                    $con_data['id'] = $status['id'];
                    $status = $recent_object->save($con_data);
                } else {
                    $status = $recent_object->add($con_data);
                }

                if (!$status) {
                    $this->error = $recent_object->getError();;
                }
            }

            return $status;
        }
    }

    /**
     * 获取当前用户未读私信数量
     * @author jry <598821125@qq.com>
     */
    public function newTalkCount() {
        $map['status'] = array('eq', 1);
        $map['to_uid'] = array('eq', is_login());
        $map['is_read'] = array('eq', 0);
        return $this->where($map)->count();
    }

    /**
     * 设置已读
     * @param $type 消息类型
     * @author jry <598821125@qq.com>
     */
    public function setRead($ids) {
        $con['id'] = array('in', $ids);
        $con['to_uid'] = is_login();
        if ($con) {
            $this->where($con)->setField('is_read', 1);
        }
    }
}
