<?php
// +----------------------------------------------------------------------
// | OpenCMF [ Simple Efficient Excellent ]
// +----------------------------------------------------------------------
// | Copyright (c) 2014 http://www.opencmf.cn All rights reserved.
// +----------------------------------------------------------------------
// | Author: jry <598821125@qq.com>
// +----------------------------------------------------------------------
namespace Addons\Alidayu;
use Common\Controller\Addon;
/**
 * 阿里大鱼短信插件
 * @author jry <598821125@qq.com>
 */
class AlidayuAddon extends Addon{
    /**
     * 插件信息
     * @author jry <598821125@qq.com>
     */
    public $info = array(
        'name'        => 'Alidayu',
        'title'       => '阿里大鱼-短信接口',
        'description' => '通过阿里大鱼短信接口发送短信',
        'status'      => '1',
        'author'      => 'Open CMF',
        'version'     => '1.2.0'
    );

    /**
     * 插件安装方法
     * @author huangda <huang-da@qq.com>
     */
    public function install(){
        return true;
    }

    /**
     * 插件卸载方法
     * @author huangda <huang-da@qq.com>
     */
    public function uninstall(){
        return true;
    }
}
