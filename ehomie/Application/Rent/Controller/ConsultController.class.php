<?php
// +----------------------------------------------------------------------
// | OpenCMF [ Simple Efficient Excellent ]
// +----------------------------------------------------------------------
// | Copyright (c) 2014 http://www.opencmf.cn All rights consultd.
// +----------------------------------------------------------------------
// | Author: jry <598821125@qq.com>
// +----------------------------------------------------------------------
namespace Rent\Controller;
use Home\Controller\HomeController;
/**
 * 立即咨询控制器
 * @author jry <598821125@qq.com>
 */
class ConsultController extends HomeController {
	/**
     * 默认方法
     * @author jry <598821125@qq.com>
     */
    public function index() {
        if (IS_POST) {
            $consult_object = D('Consult');
            $data = format_data();
            if ($data['post_source'] && $data['post_source'] === "wap"){
                $data['rent_date'] = strtotime($data['rent_date']);
                unset($data['post_source']);
            }

            if ($data['number'] === "请先选择公寓"){
                $data['number'] = "";
            }
            $uid = is_login();
            if($uid);
            $data['uid'] = $uid;
            $data = $consult_object->create($data);
            if ($data) {
                $result = $consult_object->add();
                if ($result) {
                    $this->success('提交成功，我们工作人员将尽快与你联系');
                } else {
                    $this->error($consult_object->getError());
                }
            } else {
                $this->error($consult_object->getError());
            }
        } else {
            Cookie('__forward__', $_SERVER['REQUEST_URI']);
            $this->assign('meta_title', '立即咨询');
            $this->display($template);
        }
    }
}