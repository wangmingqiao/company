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
use Common\Util\Think\Page;
/**
 * 房源控制器
 * @author jry <598821125@qq.com>
 */
class RentAdmin extends AdminController {
    /**
     * 房源列表
     * @author jry <598821125@qq.com>
     */
    public function index() {
        // 获取所有房源
        $map['status'] = array('egt', '0');  // 禁用和正常状态
        $uid = is_login();
        // if($uid !== '1'){
        //     $map['uid'] = $uid;
        // }
        $p = !empty($_GET["p"]) ? $_GET['p'] : 1;
        $data_list = D('Rent')
                   ->page($p, C('ADMIN_PAGE_ROWS'))
                   ->where($map)
                   ->order('id desc')
                   ->select();
        $page = new Page(
            D('Rent')->where($map)->count(),
            C('ADMIN_PAGE_ROWS')
        );

        $attr['name']  = 'view';
        $attr['title'] = '查看房源';
        $attr['class'] = 'label label-primary';
        $attr['href']  = U('Room/index', array('rid' => '__data_id__'));

        $mate['name']  = 'roommate';
        $mate['title'] = '找室友';
        $mate['class'] = 'label label-primary';
        $mate['href']  = U('Roommate/index', array('rid' => '__data_id__'));


        //使用Builder快速建立列表页面。
        $builder = new \Common\Builder\ListBuilder();
        $builder->setMetaTitle('房源列表')  // 设置页面标题
                ->addTopButton('addnew')   // 添加新增按钮
                ->addTopButton('delete')   // 添加删除按钮
                ->addTableColumn('id', 'ID')
		->addTableColumn('sort','排序')
                ->addTableColumn('title', '标题')
                ->addTableColumn('suburb', '区域')
                ->addTableColumn('address', '地址')
                ->addTableColumn('create_time', '创建时间', 'time')
                ->addTableColumn('status', '状态', 'status')
                ->addTableColumn('right_button', '操作', 'btn')
                ->setTableDataList($data_list)     // 数据列表
                ->setTableDataPage($page->show())  // 数据列表分页
                ->addRightButton('edit')           // 添加编辑按钮
                ->addRightButton('self',$attr)  //查看房源
                ->addRightButton('self',$mate) //找室友
                ->addRightButton('forbid')  // 添加禁用/启用按钮
                ->addRightButton('delete')  // 添加删除按钮
                ->display();
    }

    /**
     * 新增房源
     * @author jry <598821125@qq.com>
     */
    public function add() {
        if (IS_POST) {
            $manual_object = D('Rent');
            $data = format_data();
            $data['video'] = htmlspecialchars($data['video']);
            $data = $manual_object->create($data);
            $manual_object->sort = $_POST['sort'];
            if ($data) {
                $id = $manual_object->add();
                if ($id) {
                    $this->success('新增成功 ', U('index'));
                } else {
                    $this->error('新增失败'.$manual_object->getError());
                }
            } else {
                $this->error($manual_object->getError());
            }
        } else {
            // 使用FormBuilder快速建立表单页面。
            $rent = D('Rent');
            $temp['self']['citylist'] = $rent->suburb();
            $builder = new \Common\Builder\FormBuilder();
            $builder->setMetaTitle('新增房源')  // 设置页面标题
                    ->setPostUrl(U('add'))     // 设置表单提交地址
                    ->addFormItem('title', 'text', '标题', '房源标题')
                    ->addFormItem('suburb', 'linkage', '区域', '区域', null, $temp)
                    ->addFormItem('address', 'text', '详细地址', '详细地址')
                    ->addFormItem('address_gps', 'mapbox', '地图位置','地图位置' ,null, array('self' => array('city' => 'New York', 'auto' => 'address')))
                    ->addFormItem('common', 'checkbox', '配置设施', '配置设施', $rent->common())
                    ->addFormItem('tags','tags','标签','标签')
                    ->addFormItem('description','textarea','房源描述','房源描述')
                    ->addFormItem('vr','text','VR视频','VR视频地址')
                    ->addFormItem('img_structure', 'pictures', '户型图', '户型图')
                    ->addFormItem("img_real", "pictures", "实景图", "实景图")
                    ->addFormItem('cover', 'picture', '封面', '封面')
                    ->addFormItem('video','text','视频','')
                    ->addFormItem('other','kindeditor','其他福利或费用','其他福利或费用')
                    ->addFormItem('sort', 'num', '排序', '用于显示的顺序')
                    ->display();
        }
    }

    /**
     * 编辑房源
     * @author jry <598821125@qq.com>
     */
    public function edit($id) {
        if (IS_POST) {
            $manual_object = D('Rent');
            $data = format_data();
            $data['video'] = htmlspecialchars($data['video']);
            $data = $manual_object->create($data);
            if ($data) {
                if ($manual_object->save()!== false){
                    $this->success('更新成功', U('index'));
                } else {
                    $this->error('更新失败');
                }
            } else{
                $this->error($manual_object->getError());
            }
        } else {
            //使用FormBuilder快速建立表单页面。
            $rent = D('Rent');
            $temp['self']['citylist'] = $rent->suburb();
            $data = D('Rent')->find($id);
            // $data['common'] = explode(',', $data['common']);
            $builder = new \Common\Builder\FormBuilder();
            $builder->setMetaTitle('编辑房源')  // 设置页面标题
                    ->setPostUrl(U('edit'))    // 设置表单提交地址
                    ->addFormItem('id', 'hidden', 'ID', 'ID')
                    ->addFormItem('title', 'text', '标题', '房源标题')
                    ->addFormItem('suburb', 'linkage', '区域', '区域', null, $temp)
                    ->addFormItem('address', 'text', '详细地址', '详细地址')
                    ->addFormItem('address_gps', 'mapbox', '地图位置','地图位置' ,null, array('self' => array('city' => 'New York', 'auto' => 'address')))
                    ->addFormItem('common', 'checkbox', '配置设施', '配置设施', $rent->common())
                    ->addFormItem('tags','tags','标签','标签')
                    ->addFormItem('description','textarea','房源描述','房源描述')
                    ->addFormItem('vr','text','VR视频','VR视频地址')
                    ->addFormItem('img_structure', 'pictures', '户型图', '户型图')
                    ->addFormItem("img_real", "pictures", "实景图", "实景图")
                    ->addFormItem('cover', 'picture', '封面', '封面')
                    ->addFormItem('video','text','视频','视频地址:填写嵌入视频地址，不是网页的地址')
                    ->addFormItem('other','kindeditor','其他福利或费用','其他福利或费用')
                    ->addFormItem('sort', 'num', '排序', '用于显示的顺序')
                    ->setFormData($data)
                    ->display();
        }
    }

    /**
     * 设置一条或者多条数据的状态
     * @author jry <598821125@qq.com>
     */
    public function setStatus($model = CONTROLLER_NAME) {
        $ids    = I('request.ids');
        $status = I('request.status');
        if (empty($ids)) {
            $this->error('请选择要操作的数据');
        }
        $map['id'] = array('in',$ids);
        switch ($status) {
            case 'delete' :  // 删除条目
                $rent_object = D('Rent');
                $result = $rent_object->where($map)->delete();
                if ($result) {
                    $this->success('删除房源成功');
                } else {
                    $this->error('删除失败！');
                }
                break;
            default :
                parent::setStatus($model);
                break;
        }
    }
}