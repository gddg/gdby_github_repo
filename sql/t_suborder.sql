CREATE TABLE `t_suborder` (
    `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
    `order_number` char(32) NOT NULL DEFAULT '' COMMENT '订单号',
    `username` char(32) NOT NULL DEFAULT '' COMMENT '用户姓名',
    `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
    `remarks` varchar(500) NOT NULL DEFAULT '' COMMENT '下单备注，可以填一些特殊需求之类',
    `status` tinyint(3) unsigned NOT NULL DEFAULT '2',
    `created_time` int(11) unsigned NOT NULL DEFAULT '0',
    `updated_time` int(11) unsigned NOT NULL DEFAULT '0',
    `total_price` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '应收额',
    `deal_price` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '实收额',
    `city_id` int(10) unsigned NOT NULL DEFAULT '0',
    `market_id` int(10) unsigned NOT NULL DEFAULT '0',
    `site_src` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '0 大厨网，1 大果网',
    `sign_msg` varchar(500) NOT NULL DEFAULT '' COMMENT '签收留言，在收到货物有问题的时候可以用',
    `deliver_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '配送时间段',
    `deliver_date` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '配送日期',
    `line_id` int(10) unsigned NOT NULL DEFAULT '0',
    `location_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '开放城市id',
    `minus_amount` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '下单满减之类的返利',
    `promo_event_rule_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '使用优惠规则id',
    `sale_id` int(11) NOT NULL DEFAULT '0',
    `sale_role` int(11) NOT NULL DEFAULT '0',
    `dist_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '配送单ID',
    `dist_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '配送单序号',
    `wave_id` int(10) unsigned NOT NULL DEFAULT '0',
    `pick_task_id` int(10) unsigned NOT NULL DEFAULT '0',
    `order_type` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '1.普通订单;2.冻品订单;',
    `deliver_fee` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '订单运费',
    `final_price` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '订单应付金额，综合商品总价，优惠金额运费等字段计算出的总价',
    `promotion_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '新的活动的id，和以前的promo_event_id对应的表不一样',
    `pay_type` tinyint(3) NOT NULL DEFAULT '0' COMMENT '支付方式：0货到付款（默认），1微信支付',
    `pay_status` tinyint(3) NOT NULL DEFAULT '0' COMMENT '支付状态：-1支付失败，0未支付，1已支付',
    PRIMARY KEY (`id`),
    KEY `order_number` (`order_number`),
    KEY `user_id` (`user_id`),
    KEY `city_id` (`city_id`),
    KEY `market_id` (`market_id`),
    KEY `localId` (`location_id`),
    KEY `status` (`status`),
    KEY `wave_id` (`wave_id`),
    KEY `pick_task_id` (`pick_task_id`),
    KEY `dist_id` (`dist_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23000 DEFAULT CHARSET=utf8 COMMENT='子订单表';
