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
 * 默认控制器
 * @author jry <598821125@qq.com>
 */
class IndexController extends HomeController {
    /**
     * 默认方法-首页
     * @author jry <598821125@qq.com>
     */
    public function index() {
        //$rent_table = C('DB_PREFIX').'rent';

        $rent = C('DB_PREFIX').'rent';
        $room = C('DB_PREFIX').'rent_room';

        // 搜索
        $keyword = I('request.keyword', '', 'string');
        if($keyword) {
            $condition = array('like', '%'.$keyword.'%');
            $map[$rent.'.title|'.$rent.'.suburb'] = array(
                $condition,
                $condition,
                '_multi'=>true
            );
        }

        // 筛选地区
        $suburb = I('request.suburb');
        if ($suburb && $suburb != '全部,全部' && $suburb != '全部') {
            $map[$rent.'.suburb'] = array('like', '%'.$suburb.'%');
        }

        // 筛选卧室类型
        $bedroom_count = I('request.bedroom_count');
        if($bedroom_count && $bedroom_count !== 'all' && $bedroom_count !== '全部'){
            $map[$room.'.bedroom_count'] = $bedroom_count;
        } else {}

        // 筛选租金范围
        if(I('request.min_price') && I('request.max_price')) {
            $min_price = substr(I('request.min_price'), 1);
            $max_price = substr(I('request.max_price'), 1);
            if(strpos($max_price, '+')) {
                $map[$room.'.price'] = array('egt', $min_price);
            } else {
                $tmp[0] = $min_price;
                $tmp[1] = $max_price;
                $map[$room.'.price'] = array('between',$tmp);
            }
        }

        $map[$rent.'.status'] = 1;
        $map[$room.'.status'] = 1;
        $p = !empty($_GET["p"]) ? $_GET['p'] : 1;

        $rent_list = D('Rent')
            ->join($room .' ON '.$rent.'.id='.$room.'.rid')
            ->page($p,10)
            ->field($rent.'.id,'.$rent.'.title,'.$rent.'.cover,'.$rent.'.suburb,'.$rent.'.address,'.$rent.'.address_gps,'.$rent.'.tags')
            ->group($rent.'.id')
            ->order($rent.'.sort desc,'.$rent.'.id desc')
            ->where($map)
            ->select();
        if($rent_list && count($rent_list) > 0) {
            $rent_list = $this->unique_list($rent_list);
            foreach ($rent_list as &$value) {
                $price = D('Room')->where(array('rid' => $value['id']))->field('price')->select();
                $value['min_price'] = min($price)['price'];
                $value['max_price'] = max($price)['price'];
                $bedroom_count = D('Room')->where(array('rid' => $value['id']))->field('bedroom_count')->select();
                $value['min_bedroom_count'] = D('Room')->bedroom_count(min($bedroom_count)['bedroom_count']);
                $value['max_bedroom_count'] = D('Room')->bedroom_count(max($bedroom_count)['bedroom_count']);
                $value['tags'] = explode(',',$value['tags']);
            }
            $data_json = json_encode($rent_list);
        } else {
            $data_json = json_encode(null);
        }
        $page = new Page(
            D('Rent')
            ->join($room .' ON '.$rent.'.id='.$room.'.rid')
            ->group($rent.'.id')
            ->where($map)
            ->count(),
            10
        );
	if(IS_AJAX) {
            if($rent_list) {
                $response['status'] = 1;
                $response['data'] = $rent_list;
                $response['info'] = '获取数据成功！';
                $this->ajaxReturn($response);
            } else {
                $response['status'] = 0;
                $response['data'] = null;
                $response['info'] = '没有更多数据了！';
                $this->ajaxReturn($response);
            }
        } else {


            $this->assign('page', $page->show());
            $this->assign('data_list', $rent_list);
            $this->assign('data_json',$data_json);
            $this->assign('price_range',D('Room')->price_range());
            $this->assign('price_json',json_encode(D('Room')->price_range()));
            $this->assign('bedroom_count',D('Room')->bedroom_count());
            $this->assign('bedroom_json',json_encode(D('Room')->bedroom_count()));
            $this->assign('suburb_list', D('Rent')->suburb());
            $this->assign('suburb_json',json_encode(D('Rent')->suburb()));
            $this->assign('meta_title', "房间列表");
            Cookie('__forward__', $_SERVER['REQUEST_URI']);
            $this->display();
	}   
 }

    /**
     * 房间详情
     * @author jry <598821125@qq.com>
     */
    public function detail($id) {
        $rent = D('Rent');
        $info = D('Rent')->where(array('status' => 1))->find($id);
        $info['tags'] = explode(',',$info['tags']);
        $this->img_structure_url_json = json_encode($info['img_structure_url']);
        $this->img_real_url_json = json_encode($info['img_real_url']);

        if($info['video']) {
            $info['video'] = htmlspecialchars_decode($info['video']);
        }
        $info['logo'] = pathinfo($info['cover_url']);
        if ($info['common']) {
            $info['common'] = explode(',', $info['common']);
            foreach ($info['common'] as &$value) {
                $value = D('Rent')->common($value);
            }
        }

        // 收藏信息
        $mark_status = D('Mark')->get_mark_status($id);
        if($mark_status) {
            $info['is_marked'] = 1;
        } else {
            $info['is_marked'] = 0;
        }


        // 获取公寓列表
        $con['rid'] = $id;
        $con['status'] = 1;
        $room_list = D('Room')->where($con)->order('sort desc,id desc')->select();
        foreach ($room_list as &$result) {
            if($result['bedroom_count']) {
                $result['bedroom_count'] = D('Room')->bedroom_count($result['bedroom_count']);
            }
            if($result['bathroom_count']) {
                $result['bathroom_count'] = D('Room')->bathroom_count($result['bathroom_count']);
            }
            if($result['video']) {
                $result['video'] = htmlspecialchars_decode($result['video']);
            }
        }
        $info['room_list'] = $room_list;
        $this->room_list_json = json_encode($room_list);

        // 获取室友列表
        $roommate_list = D('Roommate')->get_list($id);
        if($roommate_list){
            $info['roommate_list'] = $roommate_list;
        }
        // 获取周边房源
        $map['suburb'] = array('like','%'.$info['suburb'][0].'%');
        $map['id'] = array('neq',$id);
        $map['status'] = 1;
        $surrounding_list = M()->query("select * from (select * from `oc_rent`where id <> $id AND status=1 AND `suburb` like '%".$info['suburb'][0]."%') as a ORDER BY RAND() LIMIT 4;");
        foreach ($surrounding_list as &$value) {
            $price = D('Room')->where(array('rid' => $value['id']))->field('price')->select();
            $value['min_price'] = min($price)['price'];
            $value['max_price'] = max($price)['price'];
            $bedroom_count = D('Room')->where(array('rid' => $value['id']))->field('bedroom_count')->select();
            $value['min_bedroom_count'] = D('Room')->bedroom_count(min($bedroom_count)['bedroom_count']);
            $value['max_bedroom_count'] = D('Room')->bedroom_count(max($bedroom_count)['bedroom_count']);
            $value['tags'] = explode(',',$value['tags']);
        }
        $uid = is_login();
        if($uid) {
            $roomate_info = D('Roommate')->where(array('uid' => $uid))->find();
            $this->assign('roomate_info',$roomate_info);
            $consult_info = D('Consult')->where(array('uid' => $uid))->find();
            if($consult_info) {
                $this->assign('consult_info',$consult_info);
                $this->assign('consult_json',json_encode($consult_info));
            } else {
                $this->assign('consult_json',null);
            }
        }

        if ($info) {
            $this->assign('info', $info);
            $this->assign('surrounding_list',$surrounding_list);
            $this->assign('meta_title', $room_info['title']);
            Cookie('__forward__', $_SERVER['REQUEST_URI']);
            $this->display();
        }
    }

    /**
     * 租前需知
     * @author jry <598821125@qq.com>
     */
    public function knowledge() {
        $uid = is_login();
        if($uid){
            $access_object = D('Admin/Access');
            $where['uid'] = $uid;
            $account_info = $access_object->where($where)->find();
            if(!$account_info){
                $this->assign('user_type','user');
            } else {
                $this->assign('user_type','administrator');
            }
        } else {}
        $this->assign('meta_title','租前须知');
        $this->display();
    }

    /**
     * 去掉数组中相同的元素
     * @author jry <598821125@qq.com>
     */
    protected function unique_list($array) {
        $length = count($array);
        for($i = 0; $i < $length - 1; $i ++) {
            for($j = $i + 1; $j < $length; $j ++) {
                $temp_i = implode(',', $array[$i]);
                $temp_j = implode(',', $array[$j]);
                if($temp_j == $temp_i) {
                    unset($array[$j]);
                }
            }
        }
        return $array;
    }
}
