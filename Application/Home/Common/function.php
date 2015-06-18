<?php
// +----------------------------------------------------------------------
// | OneThink [ WE CAN DO IT JUST THINK IT ]
// +----------------------------------------------------------------------
// | Copyright (c) 2013 http://www.onethink.cn All rights reserved.
// +----------------------------------------------------------------------
// | Author: 麦当苗儿 <zuojiazi@vip.qq.com> <http://www.zjzit.cn>
// +----------------------------------------------------------------------

/**
 * 前台公共库文件
 * 主要定义前台公共函数库
 */

/**
 * 检测验证码
 *
 * @param integer $id
 *        	验证码ID
 * @return boolean 检测结果
 * @author 麦当苗儿 <zuojiazi@vip.qq.com>
 */
function check_verify($code, $id = 1) {
	$verify = new \Think\Verify ();
	return $verify->check ( $code, $id );
}

/**
 * 获取列表总行数
 *
 * @param string $category
 *        	分类ID
 * @param integer $status
 *        	数据状态
 * @author 麦当苗儿 <zuojiazi@vip.qq.com>
 */
function get_list_count($category, $status = 1) {
	static $count;
	if (! isset ( $count [$category] )) {
		$count [$category] = D ( 'Document' )->listCount ( $category, $status );
	}
	return $count [$category];
}

/**
 * 获取段落总数
 *
 * @param string $id
 *        	文档ID
 * @return integer 段落总数
 * @author 麦当苗儿 <zuojiazi@vip.qq.com>
 */
function get_part_count($id) {
	static $count;
	if (! isset ( $count [$id] )) {
		$count [$id] = D ( 'Document' )->partCount ( $id );
	}
	return $count [$id];
}

/**
 * 获取导航URL
 *
 * @param string $url
 *        	导航URL
 * @return string 解析或的url
 * @author 麦当苗儿 <zuojiazi@vip.qq.com>
 */
function get_nav_url($url) {
	switch ($url) {
		case 'http://' === substr ( $url, 0, 7 ) :
		case '#' === substr ( $url, 0, 1 ) :
			break;
		default :
			$url = U ( $url );
			break;
	}
	return $url;
}
// 运营统计
function tongji($addon) {
	if (empty ( $addon ) || $addon == 'Tongji')
		return false;
	
	$data ['token'] = get_token ();
	$data ['day'] = date ( 'Ymd' );
    $info = M ( 'tongji' )->where ( $data )->find ();

    if ($info) {
        $content = unserialize ( $info ['content'] );
        $content [$addon] += 1;

        $save ['content'] = serialize ( $content );
        M ( 'tongji' )->where ( $data )->save ( $save );
    } else {
        $content [$addon] = 1;
        $data ['content'] = serialize ( $content );
        $data ['month'] = date ( 'Ym' );
        M ( 'tongji' )->add ( $data );
    }


    $userMap ['token'] = get_token ();
    $userMap ['day'] = date ( 'Ymd' );
    $userMap ['openid'] = get_openid();
    $userMap ['addon'] = $addon;
    $hasUser =  M ( 'interaction_statistics' )->where ( $userMap )->find ();

    if ($hasUser) {
        $user['uid'] =  get_mid();
        $user['openid'] = get_openid();
        $user['token'] = get_token ();
        $user['addon'] =  $addon;
        $user['month'] =  date ( 'Ym' );
        $user['day'] =  date ( 'Ymd' );
        $user['count'] = $hasUser['count'] + 1;
        M ( 'interaction_statistics' )->where ( $userMap )->save ( $user );

    }else{
        $userinfo['uid'] =  get_mid();
        $userinfo['openid'] = get_openid();
        $userinfo['token'] = get_token ();
        $userinfo['addon'] =  $addon;
        $userinfo['month'] =  date ( 'Ym' );
        $userinfo['day'] =  date ( 'Ymd' );
        $userinfo['count'] =  1;
        M ( 'interaction_statistics' )->add($userinfo);
    }

}
// 获取数据的状态操作
function show_status_op($status) {
	switch ($status){
		case 0  : return    '启用';     break;
		case 1  : return    '禁用';     break;
		case 2  : return    '审核';		break;
		default : return    false;      break;
	}
}