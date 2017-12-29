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
class RoomModel extends Model {
    /**
     * 数据库真实表名
     * 一般为了数据库的整洁，同时又不影响Model和Controller的名称
     * 我们约定每个模块的数据表都加上相同的前缀，比如微信模块用weixin作为数据表前缀
     * @author jry <598821125@qq.com>
     */
    protected $tableName = 'rent_room';

    /**
     * 自动验证规则
     * @author jry <598821125@qq.com>
     */
    protected $_validate = array(
        array('number','require','请填写房源编号', self::MUST_VALIDATE, 'regex', self::MODEL_BOTH),
        // array('number', '', '房间编号已经存在', self::VALUE_VALIDATE, 'unique', self::MODEL_BOTH),
        array('bedroom_count','require','请选择卧室数量', self::MUST_VALIDATE, 'regex', self::MODEL_BOTH),
        array('bathroom_count','require','请选择卫浴数量', self::MUST_VALIDATE, 'regex', self::MODEL_BOTH),
        array('price','require','请填写价格', self::MUST_VALIDATE, 'regex', self::MODEL_BOTH),
        array('area','require','请填写面积', self::MUST_VALIDATE, 'regex', self::MODEL_BOTH),
        array('img_structure','require','请上户型图', self::MUST_VALIDATE, 'regex', self::MODEL_BOTH),
        array('img_real','require','请上传实景图', self::MUST_VALIDATE, 'regex', self::MODEL_BOTH),
    );

    /**
     * 自动完成规则
     * @author jry <598821125@qq.com>
     */
    protected $_auto = array(
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
     * 是否出租
     * @author jry <598821125@qq.com>
     */
    public function rented($id){
        $list['0'] = '未出租';
        $list['1'] = '已出租';
        if($id || $id == '0') {
            return $list[$id];
        } else {
            return $list;
        }
    }
    /**
     * 卧室数量
     * @author jry <598821125@qq.com>
     */
    public function bedroom_count($id){
        $list['all'] = '全部';
        $list['1'] = 'studio';
        $list['2'] = '1室';
        $list['3'] = '2室';
        $list['4'] = '3室';
        $list['5'] = '4室';
        $list['6'] = '5室';
        $list['7'] = '6室及以上';
        return $id ? $list[$id] : $list;
    }
    /**
     * 卫浴数量
     * @author jry <598821125@qq.com>
     */
    public function bathroom_count($id){
        $list['all'] = '全部';
        $list['1']   = '1浴';
        $list['1.5'] = '1.5浴';
        $list['2']   = '2浴';
        $list['2.5'] = '2.5浴';
        $list['3']   = '3浴及以上';
        if($id || $id == '0') {
            return $list[$id];
        } else {
            return $list;
        }
    }

    /**
     * 租金范围
     * @author jry <598821125@qq.com>
     */
    public function price_range($id){
        $list['all'] = '全部';
        $list['0-1000']    = '$1,000以下';
        $list['1000-2000'] = '$1,000-$2,000';
        $list['2000-3000'] = '$2,000-$3,000';
        $list['3000-4000'] = '$3,000-$4,000';
        $list['4000－']     = '$4,000以上';
        return $id ? $list[$id] : $list;
    }

}
