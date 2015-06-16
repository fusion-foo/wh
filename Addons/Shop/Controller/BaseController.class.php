<?php
/**
 * Created by PhpStorm.
 * User: fusion
 * Date: 15-5-30
 * Time: 上午11:57
 */

namespace Addons\Shop\Controller;
use Home\Controller\AddonsController;

class BaseController  extends AddonsController{
    function _initialize(){
        parent::_initialize();

        $controller = strtolower ( _CONTROLLER );
        $nav = array ();

        $res ['title'] = '统计信息';
        $res ['url'] = addons_url ( 'Shop://Shop/index' );
        $res ['class'] = $controller == 'shop'? 'current' : '';
        $nav [] = $res;

        $res ['title'] = '商品管理';
        $res ['url'] = addons_url ( 'Shop://GoodsManager/index' );
        $res ['class'] = $controller == 'goodsmanager'? 'current' : '';
        $nav [] = $res;

        $res ['title'] = '库存管理';
        $res ['url'] = addons_url ( 'Shop://StockManager/index' );
        $res ['class'] = $controller == 'stockmanager'? 'current' : '';
        $nav [] = $res;

        $res ['title'] = '订单管理';
        $res ['url'] = addons_url ( 'Shop://OrderManager/index' );
        $res ['class'] = $controller == 'ordermanager'? 'current' : '';
        $nav [] = $res;

        $res ['title'] = '架子管理';
        $res ['url'] = addons_url ( 'Shop://ShelveManager/index' );
        $res ['class'] = $controller == 'shelvemanager'? 'current' : '';
        $nav [] = $res;

        $res ['title'] = '类别管理';
        $res ['url'] = addons_url ( 'Shop://CategoryManager/index' );
        $res ['class'] = $controller == 'categorymanager'? 'current' : '';
        $nav [] = $res;



        $this->assign ( 'nav', $nav );
    }
} 