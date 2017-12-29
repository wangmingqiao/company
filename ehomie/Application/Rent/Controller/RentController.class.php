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
 * 租房控制器
 * @author jry <598821125@qq.com>
 */
class RentController extends HomeController {
	/**
     * 发布房源
     * @author jry <598821125@qq.com>
     */
    public function add(){
    	if(IS_POST){
    		$rent_object = D('Rent');
            $data = $rent_object->create(format_data());
            if ($data) {
                $result = $rent_object->add($data);
                if ($result) {
                    $this->success('提交成功，请您耐心等待！');
                } else {
                    $this->error($rent_object->getError());
                }
            } else {
                $this->error($rent_object->getError());
            }
        } else {
            Cookie('__forward__', $_SERVER['REQUEST_URI']);
            $this->assign('meta_title', '发布房源');
            $this->display($template);
    	}
    }
}