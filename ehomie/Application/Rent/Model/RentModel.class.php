<?php
// +----------------------------------------------------------------------
// | OpenCMF [ Simple Efficient Excellent ]
// +----------------------------------------------------------------------
// | Copyright (c) 2014 http://www.opencmf.cn All rights reserved.
// +----------------------------------------------------------------------
// | Author: jry <598821125@qq.com>
// +----------------------------------------------------------------------
namespace Rent\Model;
use Think\Model;
/**
 * 应用模型
 * @author jry <598821125@qq.com>
 */
class RentModel extends Model {
    /**
     * 自动验证规则
     * @author jry <598821125@qq.com>
     */
    protected $_validate = array(
        array('title','require','请填写标题', self::MUST_VALIDATE, 'regex', self::MODEL_BOTH),
        array('title', '', '标题已存在', self::MUST_VALIDATE, 'unique', self::MODEL_BOTH),
        array('suburb','require','请选择区域', self::MUST_VALIDATE, 'regex', self::MODEL_BOTH),
        array('address','require','请填写详细地址', self::MUST_VALIDATE, 'regex', self::MODEL_BOTH),
        array('address_gps','require','请移动标点选择地址', self::MUST_VALIDATE, 'regex', self::MODEL_BOTH),
        array('description','require','请填写房源描述', self::MUST_VALIDATE, 'regex', self::MODEL_BOTH),
        array('cover','require','请上传封面图片', self::MUST_VALIDATE, 'regex', self::MODEL_BOTH),
        array('img_structure','require','请上户型图', self::MUST_VALIDATE, 'regex', self::MODEL_BOTH),
        array('img_real','require','请上传实景图', self::MUST_VALIDATE, 'regex', self::MODEL_BOTH),
    );

    /**
     * 自动完成规则
     * @author jry <598821125@qq.com>
     */
    protected $_auto = array(
        array('uid', 'is_login', self::MODEL_INSERT, 'function'),
        array('create_time', 'time', self::MODEL_INSERT, 'function'),
        array('update_time', 'time', self::MODEL_BOTH, 'function'),
        array('sort', '0', self::MODEL_INSERT),
        array('status', '1', self::MODEL_INSERT),
    );

    /**
     * 查找后置操作
     * @author jry <598821125@qq.com>
     */
    protected function _after_find(&$result, $options) {
        $result['title_url'] = '<a target="_blank" href="'.U('Rent/Index/detail', array('id' => $result['id'])).'">'.$result['title'].'</a>';
        $result['infowindow_href'] = U("Rent/Index/detail",array("id"=>$result['id']));
        if ($result['cover']) {
            $result['cover_url'] = get_cover($result['cover'], 'default');
        }
        if ($result['img_structure']) {
            $result['img_structure'] = explode(',', $result['img_structure']);
            foreach ($result['img_structure'] as $image) {
                $result['img_structure_url'][] = get_cover($image, 'default');
            }
        }
        if ($result['img_real']) {
            $result['img_real'] = explode(',', $result['img_real']);
            foreach ($result['img_real'] as $image) {
                $result['img_real_url'][] = get_cover($image, 'default');
            }
        }

        if ($result['suburb']) {
            $result['suburb'] = explode(',', $result['suburb']);
        }
        // if($result['tags']) {
        //     $result['tags'] = explode(',',$result['tags']);
        // }
    }

    /**
     * 查找后置操作
     * @author jry <598821125@qq.com>
     */
    protected function _after_select(&$result, $options) {
        foreach($result as &$record){
            $this->_after_find($record, $options);
        }
    }

    /**
     * 配置设施
     * @author jry <598821125@qq.com>
     */
    public function common($id) {
        $list['gym']          = '健身房';
        $list['pool']         = '游泳池';
        $list['caretaker']    = '24小时门卫';
        $list['lift']         = '电梯';
        $list['pet']          = '允许养宠物';
        $list['park']         = '车位';
        $list['air']          = '空调';
        $list['cinema']       = '私人影院';
        $list['golf']         = '高尔夫模拟室';
        $list['rest']         = '活动休闲室';
        $list['library']      = '图书馆';
        $list['top']          = '顶楼休闲区';
        $list['storage']      = '储藏室';
        $list['washing']      = '洗衣机';
        $list['dryer']        = '烘干机';
        $list['refrigerator'] = '冰箱';
        $list['microwave']    = '微波炉';
        $list['tv']           = '电视';
        return $id ? $list[$id] : $list;
    }

    /**
     * 区域
     * @author jry <598821125@qq.com>
     */
    public function suburb($id) {
        $list['0'] = array(
            'p' => '曼哈顿Manhattan',
            'c' => array(
                '0'        => array(
                    'n' => '下城Downtown',
                ),
                '1'        => array(
                    'n' => '中城Midtown',
                ),
                '2'        => array(
                    'n' => '上西城Upper West Side',
                ),
                '3'        => array(
                    'n' => '上东城Upper East Side',
                ),
                '4'        => array(
                    'n' => '上城Uppertown',
                ),
                '5'        => array(
                    'n' => '罗斯福岛Roosevelt Island',
                )
            )
        );
        $list['1'] = array(
            'p' => '新泽西NewJersey',
            'c' => array(
                '0'        => array(
                    'n' => 'Newport',
                ),
                '1'        => array(
                    'n' => 'Grove St',
                ),
                '2'        => array(
                    'n' => 'Exchange Place',
                ),
                '3'        => array(
                    'n' => 'Hoboken',
                ),
                '4'        => array(
                    'n' => 'Harrison',
                ),
                '5'        => array(
                    'n' => 'Fort Lee',
                ),
                '6'        => array(
                    'n' => '新泽西其他',
                )
            )
        );
        $list['2'] = array(
            'p' => '布鲁克林Brooklyn',
            'c' => array(
                '0'        => array(
                    'n' => 'Downtown Brooklyn',
                ),
                '1'        => array(
                    'n' => 'Sunset Park',
                ),
                '2'        => array(
                    'n' => 'Park Slope',
                ),
                '3'        => array(
                    'n' => '布鲁克林其他',
                ),
            )
        );
        $list['3'] = array(
            'p' => '皇后区Queens',
            'c' => array(
                '0'        => array(
                    'n' => '长岛市Long Island City',
                ),
                // '1'        => array(
                //     'n' => '艾姆赫斯特Elmhurst',
                // ),
                // '2'        => array(
                //     'n' => '森林小丘Forest Hills',
                // ),
                // '3'        => array(
                //     'n' => '法拉盛Flushing',
                // ),
                '1'        => array(
                    'n' => '皇后区其他',
                )
            )
        );
        $list['4'] = array(
            'p' => '其他区域',
        );

        return $id ? $list[$id] : $list;
    }
}
