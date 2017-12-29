<?php
// +----------------------------------------------------------------------
// | OpenCMF [ Simple Efficient Excellent ]
// +----------------------------------------------------------------------
// | Copyright (c) 2014 http://www.opencmf.cn All rights reserved.
// +----------------------------------------------------------------------
// | Author: jry <598821125@qq.com>
// +----------------------------------------------------------------------
namespace Rent\Admin;
use Admin\Controller\AdminController;
/**
 * 默认控制器
 * @author jry <598821125@qq.com>
 */
class RoommateAdmin extends AdminController {
    /**
     * 默认方法
     * @author jry <598821125@qq.com>
     */
    public function index() {

        $keyword = I('keyword', '', 'string');
        if($keyword) {
            $map['title'] = array('like','%'.$keyword.'%');
            $id = D('Rent')->where($map)->find()['id'];
            $con['id'] = $id;
        }
        $con['status'] = array('gt',0);
        $list = D('Roommate')->where($con)->order('id desc')->select();

    	foreach ($list as &$value) {
    		$value['gender'] = D('User/User')->user_gender($value['gender']);
            $value['room_title'] = D('Rent')->getFieldById($value['rid'],'title');
    	}
        $this->assign('meta_title', '找室友');
        $builder = new \Common\Builder\ListBuilder();
        $builder->setMetaTitle('找室友列表')  // 设置页面标题
                //->addTopButton('addnew')   // 添加新增按钮
                ->addTopButton('delete')   // 添加删除按钮
                ->setSearch('请输入房源名称', U('index'))
                ->addTableColumn('id', 'ID')
                ->addTableColumn('room_title','房源')
                ->addTableColumn('nickname', '昵称')
                ->addTableColumn('gender', '性别')
                ->addTableColumn('wechat', '微信号')
                ->addTableColumn('birthday_tag','生日标签')
                ->addTableColumn('occupation','职业')
                ->addTableColumn('hobby','爱好')
                ->addTableColumn('create_time', '创建时间', 'time')
                ->addTableColumn('status', '状态', 'status')
                ->addTableColumn('right_button', '操作', 'btn')
                ->setTableDataList($list)     // 数据列表
                ->addRightButton('forbid')  // 添加禁用/启用按钮
                ->addRightButton('delete')  // 添加删除按钮
                ->display();
    }
}