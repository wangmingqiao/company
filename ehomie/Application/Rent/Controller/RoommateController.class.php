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
 * 预约看房控制器
 * @author jry <598821125@qq.com>
 */
class RoommateController extends HomeController {
	/**
     * 默认方法
     * @author jry <598821125@qq.com>
     */
    public function index($rid) {
        if (IS_POST) {
            $object = D('Roommate');
            $_POST['rid'] = $rid;
            $uid = is_login();
            if($uid) {
                $_POST['uid'] = is_login();
            }
            $data = $object->create(format_data());
            if ($data) {
                $result = $object->add($data);
                if ($result) {
                    $this->success('提交成功，我们工作人员将尽快与你联系',U('Rent/Index/detail',array('id'=>$rid)));
                } else {
                    $this->error($object->getError());
                }
            } else {
                $this->error($object->getError());
            }
        } else {
            $uid = is_login();
            if($uid) {
                $info = D('Roommate')->where(array('uid' => $uid))->find();
                $this->assign('info',$info);
            }
            $this->assign('meta_title','找室友');
            $this->display();

        }
    }
}