<?php
// +----------------------------------------------------------------------
// | OpenCMF [ Simple Efficient Excellent ]
// +----------------------------------------------------------------------
// | Copyright (c) 2014 http://www.opencmf.cn All rights Consultd.
// +----------------------------------------------------------------------
// | Author: jry <598821125@qq.com>
// +----------------------------------------------------------------------
namespace Rent\Admin;
use Admin\Controller\AdminController;
use Common\Util\Think\Page;
/**
 * 预约看房控制器
 * @author jry <598821125@qq.com>
 */
class ConsultAdmin extends AdminController {
	/**
     * 工单列表
     * @author jry <598821125@qq.com>
     */
    public function index() {
        // 获取所有工单
        $map['status'] = array('egt', '0');  // 禁用和正常状态
        $p = !empty($_GET["p"]) ? $_GET['p'] : 1;
        $data_list = D('Consult')
                   ->page($p, C('ADMIN_PAGE_ROWS'))
                   ->where($map)
                   ->order('id desc')
                   ->select();
        $page = new Page(
            D('Consult')->where($map)->count(),
            C('ADMIN_PAGE_ROWS')
        );

        $attr['name']  = 'resume';
        $attr['title'] = '设为已处理';
        $attr['class'] = 'label label-info ajax-get';
        $attr['href'] = U('Rent/Consult/setStatus', array('ids' => '__data_id__', 'status' => 'resume'));

        $right_button['forbid']['title'] = '已处理';
        $right_button['forbid']['attribute'] = 'class="label label-success" href="#"';

        //使用Builder快速建立列表页面。
        $builder = new \Common\Builder\ListBuilder();
        $builder->setMetaTitle('列表')  // 设置页面标题
                ->addTableColumn('id', 'ID')
                ->addTableColumn('name', '姓名')
                ->addTableColumn('rid', '房源ID')
                ->addTableColumn('number', '公寓号码')
                ->addTableColumn('area_code', '区号')
                ->addTableColumn('mobile', '电话')
                ->addTableColumn('email','邮箱')
                ->addTableColumn('wechat','微信')
                ->addTableColumn('comment','详情')
                ->addTableColumn('rent_date','预计入住时间', 'time')
                ->addTableColumn('create_time', '创建时间', 'time')
                ->addTableColumn('status', '状态', 'status')
                ->addTableColumn('right_button', '操作', 'btn')
                ->setTableDataList($data_list)     // 数据列表
                ->setTableDataPage($page->show())  // 数据列表分页
                ->addRightButton('edit', array('title' => '查看'))
                ->addRightButton('delete')
                ->addRightButton('self', $attr)
                ->alterTableData(  // 修改列表数据
                    array('key' => 'status', 'value' => '<i class="fa fa-check text-success"></i>'),
                    array('right_button' => $right_button)
                )
                ->display();
    }

    /**
     * 编辑
     * @author jry <598821125@qq.com>
     */
    public function edit($id) {
        if (IS_POST) {
            $Consult_object = D('Consult');
            $data = $Consult_object->create();
            if ($data) {
                if ($Consult_object->save()!== false){
                    $this->success('更新成功', U('index'));
                } else {
                    $this->error('更新失败');
                }
            } else{
                $this->error($Consult_object->getError());
            }
        } else {
            //使用FormBuilder快速建立表单页面。
            $builder = new \Common\Builder\FormBuilder();
            $builder->setMetaTitle('编辑')  // 设置页面标题
                    ->setPostUrl(U('edit'))    // 设置表单提交地址
                    ->addFormItem('id', 'hidden', 'ID', 'ID')
                    ->addFormItem('name', 'text', '标题', '标题')
                    ->addFormItem('area_code','text','区号','区号')
                    ->addFormItem('mobile', 'text', '电话', '电话')
                    ->addFormItem('email','text','邮箱','邮箱')
                    ->addFormItem('wechat','text','微信','微信')
                    ->addFormItem('date','date','预约入住时间','')
                    ->setFormData(D('Consult')->find($id))
                    ->display();
        }
    }

    /**
     * 已处理
     * @author jry <598821125@qq.com>
     */
    public function setStatus() {
        parent::setStatus('Rent/Consult');
    }
}
