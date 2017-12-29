<?php
// +----------------------------------------------------------------------
// | OpenCMF [ Simple Efficient Excellent ]
// +----------------------------------------------------------------------
// | Copyright (c) 2014 http://www.opencmf.cn All rights reserved.
// +----------------------------------------------------------------------
// | Author: jry <598821125@qq.com>
// +----------------------------------------------------------------------
namespace Rent\Controller;
use Home\Controller\HomeController;
use Common\Util\Think\Page;
/**
 * 收藏控制器
 * @author jry <598821125@qq.com>
 */
class MarkController extends HomeController{
    /**
     * 初始化方法
     * @author jry <598821125@qq.com>
     */
    protected function _initialize(){
        parent::_initialize();
        $this->is_login();
    }

    /**
     * 我的
     * @author jry <598821125@qq.com>
     */
    public function my() {

        $map['uid']  = $this->is_login();
        $map['status'] = array('eq', '1');  // 禁用和正常状态
        $p = !empty($_GET["p"]) ? $_GET['p'] : 1;
        $mark_object = D('Rent/Mark');
        $data_list = $mark_object
                   ->page($p, 8)
                   ->where($map)
                   ->order('id asc')
                   ->select();
        $page = new Page(
            $mark_object->where($map)->count(),
            16
        );
        foreach ($data_list as &$value) {
            $res = D('Rent')->find($value['data_id']);
            $value = array_merge($value,$res);
            $price = D('Room')->where(array('rid' => $value['data_id']))->field('price')->select();
            $value['min_price'] = min($price)['price'];
            $value['max_price'] = max($price)['price'];
            $bedroom_count = D('Room')->where(array('rid' => $value['id']))->field('bedroom_count')->select();
            $value['min_bedroom_count'] = D('Room')->bedroom_count(min($bedroom_count)['bedroom_count']);
            $value['max_bedroom_count'] = D('Room')->bedroom_count(max($bedroom_count)['bedroom_count']);
            $value['tags'] = explode(',',$value['tags']);
        }

        $user_object = D('User/User');
        $user_info = $user_object->find($this->is_login());

        $this->assign('data_list',$data_list);
        $this->assign('user_info',$user_info);
        $this->assign('meta_title','个人中心');
        $this->display();
    }

    /**
     * 收藏
     * @param $type 消息类型
     * @author jry <598821125@qq.com>
     */
    public function add($data_id){
        $mark_object = D('Rent/Mark');
        $con['data_id'] = $data_id;
        $con['uid'] = $this->is_login();
        $find = $mark_object->where($con)->find();
        if ($find) {
            if ((time() - $find['update_time']) < 3) {
                $this->error('操作频繁，3秒后重试！');
            }
            if ($find['status'] === '1') {
                $where['id'] = $find['id'];
                $result = $mark_object
                        ->where($where)
                        ->setField(array('status' => 0, 'update_time' => time()));
                if ($result) {
                    $return['status'] = 1;
                    $return['info'] = '取消收藏成功'.$mark_object->getError();
                    $return['follow_status'] = 0;

                    // 收藏数量-1
                    $result = D('Rent')->where(array('id' => $data_id))->SetDec('mark_num');
                    $this->ajaxReturn($return);
                } else {
                    $return['status'] = 0;
                    $return['info'] = '取消收藏失败'.$mark_object->getError();
                    $return['follow_status'] = 1;
                    $this->ajaxReturn($return);
                }
            } else {
                $where['id'] = $find['id'];
                $result = $mark_object
                        ->where($where)
                        ->setField(array('status' => 1, 'update_time' => time()));
                if ($result) {
                    $return['status'] = 1;
                    $return['info'] = '收藏成功'.$mark_object->getError();
                    $return['follow_status'] = 1;

                    // 收藏数量+1
                    $result = D('Rent')->where(array('id' => $data_id))->SetInc('mark');
                    $this->ajaxReturn($return);
                } else {
                    $return['status'] = 0;
                    $return['info'] = '收藏失败1'.$mark_object->getError();
                    $this->ajaxReturn($return);
                }
            }
        } else {
            $rent_obj = D('Rent');
            $res = $rent_obj->find($data_id);
            if($res){
                $data = $mark_object->create($con);
                if ($data) {
                    $result = $mark_object->add($data);
                    if ($result) {
                        $return['status'] = 1;
                        $return['info'] = '收藏成功'.$mark_object->getError();
                        $return['follow_status'] = 1;
                        $return['data'] = $data;

                        // 收藏数量+1
                        $result = D('Rent')->where(array('id' => $data_id))->SetInc('mark');
                        $this->ajaxReturn($return);
                    } else {
                        $return['status'] = 0;
                        $return['info'] = '收藏失败'.$mark_object->getError();
                        $this->ajaxReturn($return);
                    }
                }
            } else {
                $return['status'] = 0;
                $return["info"] = '你收藏的物品不存在';
                $this->ajaxReturn($return);
            }
        }
    }
}
