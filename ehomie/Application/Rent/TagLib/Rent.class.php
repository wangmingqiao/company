<?php
// +----------------------------------------------------------------------
// | OpenCMF [ Simple Efficient Excellent ]
// +----------------------------------------------------------------------
// | Copyright (c) 2014 http://www.opencmf.cn All rights reserved.
// +----------------------------------------------------------------------
// | Author: jry <598821125@qq.com>
// +----------------------------------------------------------------------
namespace Rent\TagLib;
use Think\Template\TagLib;
/**
 * 标签库
 * @author jry <598821125@qq.com>
 */
class Rent extends TagLib {
    /**
     * 定义标签列表
     * @author jry <598821125@qq.com>
     */
    protected $tags = array(
        'room_list'   => array('attr' => 'name,limit,order', 'close' => 1),  // 房间列表
    );

    /**
     * 房间列表
     * @author jry <598821125@qq.com>
     */
    public function _room_list($tag, $content) {
        $name  = $tag['name'];
        $limit = $tag['limit'] ? : 10;
        $order = $tag['order'] ? : '\'sort desc, id desc\'';
        $parse  = '<?php ';
        $parse .= '$__ROOMLIST__ = D("Rent/Room")->getList("null", '.$limit.', '.$order.');';
        $parse .= ' ?>';
        $parse .= '<volist name="__ROOMLIST__" id="'. $name .'">';
        $parse .= $content;
        $parse .= '</volist>';
        return $parse;
    }
}
