<?php
// +----------------------------------------------------------------------
// | OpenCMF [ Simple Efficient Excellent ]
// +----------------------------------------------------------------------
// | Copyright (c) 2014 http://www.opencmf.cn All rights reserved.
// +----------------------------------------------------------------------
// | Author: jry <598821125@qq.com>
// +----------------------------------------------------------------------
namespace Home\Controller;
use Think\Controller;
/**
 * 前台默认控制器
 * @author jry <598821125@qq.com>
 */
class IndexController extends HomeController {
    /**
     * 默认方法
     * @author jry <598821125@qq.com>
     */
    public function index() {
        $uid = is_login();
        if($uid){
            $access_object = D('Admin/Access');
            $where['uid'] = $uid;
            $account_info = $access_object->where($where)->find();
            if(!$account_info){
                $this->assign('user_type','user');
            } else {
                $this->assign('user_type','administrator');
            }
        } else {}
        Cookie('__forward__', C('HOME_PAGE'));
        if (C('INDEX_URL')) {
            if (stristr(C('INDEX_URL'), 'http://') || stristr(C('INDEX_URL'), 'https://')) {
                redirect(C('INDEX_URL'));
            } else {
                $this->redirect(C('INDEX_URL'));
            }
        }
        $this->assign('meta_title', "首页");
        header("Accept-Ranges:bytes");
        $this->display();
    }

    /**
     * 单页类型
     * @author jry <598821125@qq.com>
     */
    public function page($id) {
        $nav_object = D('Admin/Nav');
        $con['id']     = $id;
        $con['status'] = 1;
        $info = $nav_object->where($con)->find();

        Cookie('__forward__', C('HOME_PAGE'));
        $this->assign('info', $info);
        $this->assign('meta_title', $info['title']);
        $this->display();
    }
}
