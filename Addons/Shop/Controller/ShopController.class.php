<?php

namespace Addons\Shop\Controller;
use Home\Controller\AddonsController;

class ShopController extends BaseController{
    public function index(){
        $this->display ('index');
    }

    public function lists(){
        $this->display ('index');
    }
}
