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
class RoomAdmin extends AdminController {
    /**
     * 房间列表
     * @author jry <598821125@qq.com>
     */
    public function index($rid) {
        // 获取该房源下的所有房间
        $map['status'] = array('egt', '0');  // 禁用和正常状态
        $map['rid'] = $rid;
        $room = D('Room');
        $data_list = $room
                   ->where($map)
                   ->order('id desc')
                   ->select();

        $attr['title'] = '新增';
        $attr['class'] = 'btn btn-primary';
        $attr['href']  = U('add',array('rid' => $rid));

        foreach ($data_list as &$value) {
            $value['bedroom_count'] = $room->bedroom_count($value['bedroom_count']);
            $value['bathroom_count'] = $room->bathroom_count($value['bathroom_count']);
            $value['rented'] = $room->rented($value['rented']);
        }

        //使用Builder快速建立列表页面。
        $builder = new \Common\Builder\ListBuilder();
        $builder->setMetaTitle('房源列表')  // 设置页面标题
                ->addTopButton('self',$attr)   // 添加新增按钮
                // ->addTopButton('delete')   // 添加删除按钮
                ->addTableColumn('id', 'ID')
	       ->addTableColumn('sort','排序')
                ->addTableColumn('number','房间编号')
                ->addTableColumn('bedroom_count','房间数量')
                ->addTableColumn('bathroom_count','浴室数量')
                ->addTableColumn('area','面积')
                ->addTableColumn('price','租金')
                ->addTableColumn('rented','是否出租')
                ->addTableColumn('create_time', '创建时间', 'time')
                ->addTableColumn('status', '状态', 'status')
                ->addTableColumn('right_button', '操作', 'btn')
                ->setTableDataList($data_list)     // 数据列表
                ->addRightButton('edit')           // 添加编辑按钮
                ->addRightButton('forbid')  // 添加禁用/启用按钮
                ->addRightButton('delete')  // 添加删除按钮
                ->display();
    }

    /**
     * 新增房源
     * @author jry <598821125@qq.com>
     */
    public function add($rid) {
        if (IS_POST) {
            $manual_object = D('Room');
            $data = format_data();
            $data['video'] = htmlspecialchars($data['video']);
            $data = $manual_object->create($data);
            $manual_object->sort = $_POST['sort'];
            if ($data) {
                $id = $manual_object->add();
                if ($id) {
                    $this->success('新增成功', U('index',array('rid' => $rid)));
                } else {
                    $this->error('新增失败'.$manual_object->getError());
                }
            } else {
                $this->error($manual_object->getError());
            }
        } else {
            // 使用FormBuilder快速建立表单页面。
            $room = D('Room');
            $builder = new \Common\Builder\FormBuilder();
            $builder->setMetaTitle('新增房间')  // 设置页面标题
                    ->setPostUrl(U('add'))     // 设置表单提交地址
                    ->addFormItem('rid','hidden')
                    ->addFormItem('number','text','房间编号','如：V001')
                    ->addFormItem('rented','radio','是否出租','已出租',$room->rented())
                    ->addFormItem('bedroom_count', 'select', '卧室数量', '0', $room->bedroom_count())
                    ->addFormItem('bathroom_count', 'select', '卫浴数量', '0', $room->bathroom_count())
                    ->addFormItem('price', 'text', '月租价', '0.00')
                    ->addFormItem('area','num','面积','单位：平方英尺')
                    ->addFormItem('vr', 'text', 'VR视频', 'VR视频地址')
                    ->addFormItem('video','text','视频','视频地址:填写嵌入视频地址，不是网页的地址')
                    ->addFormItem("img_structure", "pictures", "户型图", "户型图")
                    ->addFormItem('img_real','pictures','实景图','实景图')
                    ->addFormItem('sort', 'num', '排序', '用于显示的顺序')
                    ->setFormData(array('rid' => $rid))
                    ->display();
        }
    }

    /**
     * 编辑房源
     * @author jry <598821125@qq.com>
     */
    public function edit($id) {
        if (IS_POST) {
            $manual_object = D('Room');
            $data = format_data();
            $data['video'] = htmlspecialchars($data['video']);
            $data = $manual_object->create($data);
            
            if ($data) {
                if ($manual_object->save()!== false){
                    $this->success('更新成功', U('index',array('rid' => $_POST['rid'])));
                } else {
                    $this->error('更新失败');
                }
            } else{
                $this->error($manual_object->getError());
            }
        } else {
            //使用FormBuilder快速建立表单页面。
            $room = D('Room');
            $builder = new \Common\Builder\FormBuilder();
            $builder->setMetaTitle('编辑房源')  // 设置页面标题
                    ->setPostUrl(U('edit'))    // 设置表单提交地址
                    ->addFormItem('id', 'hidden', 'ID', 'ID')
                    ->addFormItem('rid','hidden','RID','RID')
                    ->addFormItem('number','text','房间编号','如：V001')
                    ->addFormItem('rented','radio','是否出租','已出租',$room->rented())
                    ->addFormItem('bedroom_count', 'select', '卧室数量', '0', $room->bedroom_count())
                    ->addFormItem('bathroom_count', 'select', '卫浴数量', '0', $room->bathroom_count())
                    ->addFormItem('price', 'text', '月租价', '0.00')
                    ->addFormItem('area','num','面积','单位：平方英尺')
                    ->addFormItem('vr', 'text', 'VR视频', 'VR视频地址')
                    ->addFormItem('video','text','视频','视频地址:填写嵌入视频地址，不是网页的地址')
                    ->addFormItem("img_structure", "pictures", "户型图", "户型图")
                    ->addFormItem('img_real','pictures','实景图','实景图')
                    ->addFormItem('sort', 'num', '排序', '用于显示的顺序')
                    ->setFormData(D('Room')->find($id))
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
                $rent_object = D('Room');
                $result = $rent_object->where($map)->delete();
                if ($result) {
                    $this->success('删除房源成功');
                } else {
                    $this->error('删除失败');
                }
                break;
            default :
                parent::setStatus($model);
                break;
        }
    }
}