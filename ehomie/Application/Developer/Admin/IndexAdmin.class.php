<?php
// +----------------------------------------------------------------------
// | OpenCMF [ Simple Efficient Excellent ]
// +----------------------------------------------------------------------
// | Copyright (c) 2014 http://www.opencmf.cn All rights reserved.
// +----------------------------------------------------------------------
// | Author: jry <598821125@qq.com>
// +----------------------------------------------------------------------
namespace Developer\Admin;
use Admin\Controller\AdminController;
/**
 * 默认控制器
 * @author jry <598821125@qq.com>
 */
class IndexAdmin extends AdminController {
    /**
     * 初始化方法
     * @author jry <598821125@qq.com>
     */
    protected function _initialize(){
        parent::_initialize();
        if (is_login() !== '1') {
            $this->error('超级管理员才有权限使用本模块');
        }
    }

    /**
     * 默认方法
     * @author jry <598821125@qq.com>
     */
    public function index() {
        $this->assign('meta_title', '数据库模块');
        echo '<iframe style="width:100%;height:100%;border:0;" '
            .' src="'.__ROOT__.'/'.APP_PATH.'/'.MODULE_NAME
            .'/adminer-4.2.2.php'
            .'?server='.C('adminer_config.host')
            .'&db='.C('adminer_config.db')
            .'&username='.C('adminer_config.username')
            .'">';
    }

    /**
     * 在线编辑器
     * @author jry <598821125@qq.com>
     */
    public function ide() {
        $this->assign('meta_title', 'WebIDE');
        echo '<iframe style="width:100%;height:100%;border:0;" '
            .' src="'.__ROOT__.'/'.APP_PATH.'/'.MODULE_NAME
            .'/phpIDE/IDE/index.html'
            .'">';
    }
}