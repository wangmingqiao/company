<?php
// +----------------------------------------------------------------------
// | OpenCMF [ Simple Efficient Excellent ]
// +----------------------------------------------------------------------
// | Copyright (c) 2014 http://www.opencmf.cn All rights reserved.
// +----------------------------------------------------------------------
// | Author: jry <598821125@qq.com>
// +----------------------------------------------------------------------
namespace User\Model;
use Think\Model;
/**
 * 用户登录历史模型
 * @author jry <598821125@qq.com>
 */
class LoginLogModel extends Model {
    /**
     * 数据库表名
     * @author jry <598821125@qq.com>
     */
    protected $tableName = 'user_login_log';

    /**
     * 自动完成规则
     * @author jry <598821125@qq.com>
     */
    protected $_auto = array(
        array('uid', 'is_login', self::MODEL_INSERT, 'function'),
        array('ip', 'get_client_ip', self::MODEL_INSERT, 'function', 1),
        array('device', 'get_device_info', self::MODEL_INSERT, 'callback'),
        array('create_time', 'time', self::MODEL_INSERT, 'function'),
        array('update_time', 'time', self::MODEL_BOTH, 'function'),
        array('status', '1', self::MODEL_INSERT),
    );

    /**
     * 登录类型
     * @author jry <598821125@qq.com>
     */
    public function login_type($id){
        $list[0]  = '网页';
        $list[1]  = 'IOS';
        $list[2]  = 'Android';
        return $id ? $list[$id] : $list;
    }

    /**
     * 登录类型
     * @author jry <598821125@qq.com>
     */
    protected function get_device_info(){
        return $_SERVER['HTTP_USER_AGENT'];
    }
}
