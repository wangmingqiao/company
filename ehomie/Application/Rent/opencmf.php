<?php
// +----------------------------------------------------------------------
// | OpenCMF [ Simple Efficient Excellent ]
// +----------------------------------------------------------------------
// | Copyright (c) 2014 http://www.opencmf.cn All rights reserved.
// +----------------------------------------------------------------------
// | Author: jry <598821125@qq.com>
// +----------------------------------------------------------------------
//模块信息配置
return array(
    //模块信息
    'info' => array(
        'name'        => 'Rent',
        'title'       => '租房',
        'icon'        => 'fa fa-home',
        'icon_color'  => '#8ECD5D',
        'description' => '租房房源管理模块',
        'developer'   => '南京科斯克网络科技有限公司',
        'website'     => 'http://www.opencmf.cn',
        'version'     => '1.3.0',
        'dependences' => array(
            'Admin'   => '1.3.0',
        )
    ),

    // 模块配置
    'config' => array(
        'taglib' => array(
            'title'  => '加载标签库',
            'type'   =>'checkbox',
            'options'=> array(
                'Rent' => 'Rent',
            ),
            'value'  => array(
                '0'  => 'Rent',
            ),
        ),
    ),

    //后台菜单及权限节点配置
    'admin_menu' => array(
        '1' => array(
            'id'    => '1',
            'pid'   => '0',
            'title' => '租房',
            'icon'  => 'fa fa-home',
        ),
        '2' => array(
            'pid'   => '1',
            'title' => '房源管理',
            'icon'  => 'fa fa-folder-open-o',
        ),
        '3' => array(
            'pid'   => '2',
            'title' => '房源列表',
            'icon'  => 'fa fa-home',
            'url'   => 'Rent/Rent/index',
        ),
        '4' => array(
            'pid'   => '3',
            'title' => '新增',
            'url'   => 'Rent/Rent/add',
        ),
        '5' => array(
            'pid'   => '3',
            'title' => '编辑',
            'url'   => 'Rent/Rent/edit',
        ),
        '6' => array(
            'pid'   => '3',
            'title' => '设置状态',
            'url'   => 'Rent/Rent/setStatus',
        ),
        '7' => array(
            'pid'   => '3',
            'title' => '房间管理',
            'url'   => 'Rent/Room/index',
        ),
        '8' => array(
            'pid'   => '7',
            'title' => '新增',
            'url'   => 'Rent/Room/add',
        ),
        '9' => array(
            'pid'   => '7',
            'title' => '编辑',
            'url'   => 'Rent/Room/edit',
        ),
        '10' => array(
            'pid'   => '7',
            'title' => '设置状态',
            'url'   => 'Rent/Room/setStatus',
        ),
        '11' => array(
            'pid'   => '7',
            'title' => '编辑',
            'url'   => 'Rent/Join/edit',
        ),
        '12' => array(
            'pid'   => '7',
            'title' => '设置状态',
            'url'   => 'Rent/Join/setStatus',
        ),
        '13' => array(
            'pid'   => '2',
            'title' => '委托找房',
            'icon'  => 'fa fa-bookmark-o',
            'url'   => 'Rent/Entrust/index'
        ),
        '14' => array(
            'pid'   => '2',
            'title' => '立即咨询',
            'icon'  => 'fa fa-calendar',
            'url'   => 'Rent/Consult/index'
        ),
        '15' => array(
            'pid'   => '2',
            'title' => '室友查询',
            'icon'  => 'fa fa-user',
            'url'   => 'Rent/Roommate/index'
        )
    )
);
