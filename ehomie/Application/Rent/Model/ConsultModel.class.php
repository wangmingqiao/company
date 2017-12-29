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
 * 加盟模型
 * @author jry <598821125@qq.com>
 */
class ConsultModel extends Model {
    /**
     * 数据库真实表名
     * 一般为了数据库的整洁，同时又不影响Model和Controller的名称
     * 我们约定每个模块的数据表都加上相同的前缀，比如微信模块用weixin作为数据表前缀
     * @author jry <598821125@qq.com>
     */
    protected $tableName = 'rent_consult';

    /**
     * 自动验证规则
     * @author jry <598821125@qq.com>
     */
    protected $_validate = array(
        array('name','require','请填写姓名', self::MUST_VALIDATE, 'regex', self::MODEL_BOTH),
        array('area_code','require','请填写区号', self::MUST_VALIDATE, 'regex', self::MODEL_BOTH),
        array('mobile','require','请填写电话', self::MUST_VALIDATE, 'regex', self::MODEL_BOTH),
        array('rid','require','请填写房源', self::MUST_VALIDATE, 'regex', self::MODEL_BOTH),
        // array('number','require','请填写公寓号码', self::MUST_VALIDATE, 'regex', self::MODEL_BOTH),
        // array('rent_date','require','请选择入住时间',self::MUST_VALIDATE, 'regex', self::MODEL_BOTH)
    );

    /**
     * 自动完成规则
     * @author jry <598821125@qq.com>
     */
    protected $_auto = array(
        array('create_time', 'time', self::MODEL_INSERT, 'function'),
        array('update_time', 'time', self::MODEL_BOTH, 'function'),
        array('status', '0', self::MODEL_INSERT),
    );

}
