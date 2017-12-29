<?php
// +----------------------------------------------------------------------
// | OpenCMF [ Simple Efficient Excellent ]
// +----------------------------------------------------------------------
// | Copyright (c) 2014 http://www.opencmf.cn All rights reserved.
// +----------------------------------------------------------------------
// | Author: jry <598821125@qq.com>
// +----------------------------------------------------------------------
namespace Addons\Email;
use Common\Controller\Addon;
/**
 * 邮件插件
 * @author jry <598821125@qq.com>
 */
class EmailAddon extends Addon{
    /**
     * 插件信息
     * @author jry <598821125@qq.com>
     */
    public $info = array(
        'name'        => 'Email',
        'title'       => '邮件插件',
        'description' => '实现系统发邮件功能',
        'status'      => 1,
        'author'      => 'OpenCMF',
        'version'     => '1.4.0',
    );

    /**
     * 插件所需钩子
     * @author jry <598821125@qq.com>
     */
    public $hooks = array(
        '0' => 'SendMessage',
    );

    /**
     * 自定义插件后台
     * @author jry <598821125@qq.com>
     */
    //public $custom_adminlist = './Addons/Email/admin.html';

    /**
     * 插件后台数据表配置
     * @author jry <598821125@qq.com>
     */
    public $admin_list = array(
        '1' => array(
            'title' => '邮件列表',
            'model' => 'Email',
        )
    );

    /**
     * 插件安装方法
     * @author jry <598821125@qq.com>
     */
    public function install(){
        return true;
    }

    /**
     * 插件卸载方法
     * @author jry <598821125@qq.com>
     */
    public function uninstall(){
        return true;
    }

    /**
     * 发送消息钩子
     * @author jry <598821125@qq.com>
     */
    public function SendMessage($param){
        $user_info = get_user_info($param['to_uid']);
        if ($user_info['email'] && $user_info['email_bind']) {
            $param['receiver'] = $user_info['email'];
            $email_object = D('Addons://Email/Email');
            $data = $email_object->create($param);
            if ($data) {
                $email_object->add($data);
            }
        }
    }
}
