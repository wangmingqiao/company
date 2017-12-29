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
 * 委托找房模型
 * @author jry <598821125@qq.com>
 */
class RoommateModel extends Model {
    /**
     * 数据库真实表名
     * 一般为了数据库的整洁，同时又不影响Model和Controller的名称
     * 我们约定每个模块的数据表都加上相同的前缀，比如微信模块用weixin作为数据表前缀
     * @author jry <598821125@qq.com>
     */
    protected $tableName = 'rent_roommate';

    /**
     * 自动验证规则
     * @author jry <598821125@qq.com>
     */
    protected $_validate = array(
        array('nickname','require','请填写昵称', self::MUST_VALIDATE, 'regex', self::MODEL_BOTH),
        array('gender','require','请选择性别', self::MUST_VALIDATE, 'regex', self::MODEL_BOTH),
        array('wechat','require','请填写微信号',self::MUST_VALIDATE,'regex', self::MODEL_BOTH)
    );

    /**
     * 自动完成规则
     * @author jry <598821125@qq.com>
     */
    protected $_auto = array(
        array('create_time', 'time', self::MODEL_INSERT, 'function'),
        array('update_time', 'time', self::MODEL_BOTH, 'function'),
        array('status', '1', self::MODEL_INSERT),
    );
    /**
     * 找室友
     * @author jry <598821125@qq.com>
     */
    public function get_list($rid) {
        $con['status'] = array('gt',0);
        $con['rid'] = $rid;
        $list = $this->where($con)->select();
        foreach ($list as &$value) {
            $value['avatar'] = D('Admin/User')->find($value['uid'])['avatar'];
        }
        return $list ? $list : false;
    }
}
