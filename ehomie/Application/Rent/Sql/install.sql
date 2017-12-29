CREATE TABLE `oc_rent` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `uid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '用户ID',
  `title` varchar(127) NOT NULL DEFAULT '' COMMENT '标题',
  `number` varchar(63) NOT NULL DEFAULT '' COMMENT '编号',
  `suburb` varchar(127) NOT NULL DEFAULT '' COMMENT '区域',
  `address` varchar(255) NOT NULL DEFAULT '' COMMENT '详细地址',
  `address_gps` varchar(63) NOT NULL DEFAULT '' COMMENT '经纬度',
  `bedroom_num` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '卧室数量',
  `bathroom_num` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '卫浴数量',
  `price` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '月租价',
  `rentdate_type` varchar(63) NOT NULL DEFAULT '' COMMENT '租期类型',
  `rent_type` varchar(63) NOT NULL DEFAULT '' COMMENT '出租类型',
  `source_type` varchar(63) NOT NULL DEFAULT '' COMMENT '房源类型',
  `furniture` varchar(31) NOT NULL DEFAULT '' COMMENT '有无家具',
  `rent_date` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '出租日期',
  `area_sqft` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '面积（sqft）',
  `area_floor` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '面积（层）',
  `year` int(11) NOT NULL DEFAULT '0' COMMENT '年代',
  `to_station` varchar(255) NOT NULL DEFAULT '' COMMENT '步行到公交所需时间',
  `cover` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '封面',
  `images` varchar(255) NOT NULL COMMENT '图集',
  `common` varchar(255) NOT NULL DEFAULT '' COMMENT '配置设施',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `sort` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `status` int(3) NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='房源信息表';

CREATE TABLE `oc_rent_entrust` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(127) NOT NULL DEFAULT '' COMMENT '姓名',
  `mobile` varchar(20) NOT NULL DEFAULT '' COMMENT '电话',
  `email` varchar(63) NOT NULL DEFAULT '' COMMENT '邮箱',
  `winxin` varchar(63) NOT NULL DEFAULT '' COMMENT '微信',
  `qq` varchar(20) NOT NULL DEFAULT '' COMMENT 'QQ',
  `type` varchar(63) NOT NULL DEFAULT '' COMMENT '看房种类',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '修改时间',
  `status` tinyint(3) NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='委托看房信息表';

CREATE TABLE `oc_rent_reserve` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(127) NOT NULL DEFAULT '' COMMENT '姓名',
  `mobile` varchar(20) NOT NULL DEFAULT '' COMMENT '电话',
  `email` varchar(63) NOT NULL DEFAULT '' COMMENT '邮箱',
  `winxin` varchar(63) NOT NULL DEFAULT '' COMMENT '微信',
  `qq` varchar(20) NOT NULL DEFAULT '' COMMENT 'QQ',
  `date` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '预计入住时间',
  `comment` varchar(255) NOT NULL DEFAULT '' COMMENT '其他信息',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '修改时间',
  `status` tinyint(3) NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='预约看房信息表';