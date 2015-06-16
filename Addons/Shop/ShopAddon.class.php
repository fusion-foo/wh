<?php

namespace Addons\Shop;
use Common\Controller\Addon;

/**
 * 商城插件
 * @author Fusion
 */

    class ShopAddon extends Addon{

        public $info = array(
            'name'=>'Shop',
            'title'=>'商城',
            'description'=>'微信商城。',
            'status'=>1,
            'author'=>'Fusion',
            'version'=>'0.1',
            'has_adminlist'=>1,
            'type'=>1         
        );

	public function install() {
		$install_sql = './Addons/Shop/install.sql';
		if (file_exists ( $install_sql )) {
			execute_sql_file ( $install_sql );
		}
		return true;
	}
	public function uninstall() {
		$uninstall_sql = './Addons/Shop/uninstall.sql';
		if (file_exists ( $uninstall_sql )) {
			execute_sql_file ( $uninstall_sql );
		}
		return true;
	}

        //实现的weixin钩子方法
        public function weixin($param){

        }

        //实现的weixin钩子方法
        public function pageHeader($param){

        }

    }