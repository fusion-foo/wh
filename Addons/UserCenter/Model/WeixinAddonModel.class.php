<?php

namespace Addons\UserCenter\Model;

use Home\Model\WeixinModel;

/**
 * UserCenter的微信模型
 */
class WeixinAddonModel extends WeixinModel {
	var $config = array ();
	function reply($dataArr, $keywordArr = array()) {
        $map ['token'] = get_token ();
        $map ['openid'] = get_openid ();
        $user = M ( 'follow' )->where ( $map )->find ();
        if (! $user && ! empty ( $map ['token'] ) && $map ['token'] != '-1' && ! empty ( $map ['openid'] ) && $map ['openid'] != '-1') {
            D ( 'Common/Follow' )->init_follow ( $map ['openid'] );
            $user = M ( 'follow' )->where ( $map )->find ();
        }
        $bind_url = addons_url ( 'UserCenter://UserCenter/userCenter', $map );//
        $this->replyText ( '点击<a href="' .$bind_url."&XDEBUG_SESSION_START=14473" . '">个人信息</a>.' );

	}
	// 关注时的操作
	function subscribe($dataArr) {
		$info = D ( 'Common/Follow' )->init_follow ( $dataArr ['FromUserName'] );
		
		// 增加积分
		session ( 'mid', $info ['id'] );
		add_credit ( 'subscribe' );
	}
	// 取消关注公众号事件
	public function unsubscribe() {
		// 增加积分
		add_credit ( 'unsubscribe' );
	}
}
        	