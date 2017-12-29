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
 * 委托找房控制器
 * @author jry <598821125@qq.com>
 */
class EntrustController extends HomeController {
	/**
     * 默认方法
     * @author jry <598821125@qq.com>
     */
    public function index() {
        if (IS_POST) {
            $entrust_object = D('Entrust');
            $data = $entrust_object->create();
            if ($data) {
                $result = $entrust_object->add($data);
                if ($result) {
                    $this->success('提交成功，我们工作人员将尽快与你联系');
                } else {
                    $this->error($entrust_object->getError());
                }
            } else {
                $this->error($entrust_object->getError());
            }
        } else {
            Cookie('__forward__', $_SERVER['REQUEST_URI']);
            $this->assign('meta_title', '委托找房');
            $this->display($template);
        }
    }
}