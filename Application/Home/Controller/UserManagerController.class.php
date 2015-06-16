<?php
/**
 * Created by PhpStorm.
 * User: fusion
 * Date: 15-5-17
 * Time: 上午12:38
 */

namespace Home\Controller;


class UserManagerController extends HomeController {

    function _initialize() {
        define ( 'ADDON_PUBLIC_PATH', '' );

        $act = strtolower ( ACTION_NAME );
        $nav = array ();
        $res ['title'] = '用户信息';
        $res ['url'] = U ( 'UserManager/lists' );
        $res ['class'] = $act == ('lists' || 'edit' || 'detail')? 'current' : '';
        $nav [] = $res;

        $res ['title'] = '用户数据';
        $res ['url'] = U ( 'UserManager/dataAnalysis' );
        $res ['class'] = $act == 'dataAnalysis' ? 'current' : '';
        $nav [] = $res;

        $res ['title'] = '管理设置';
        $res ['url'] = U ( 'UserMannamer/setting' );
        $res ['class'] = $act == 'setting' ? 'current' : '';
        $nav [] = $res;

        $this->assign ( 'nav', $nav );
    }

    public function lists($model = "follow", $p = 0){
        is_array($model) || $model = $this->getModel ( $model );

        $list_data = $this->_get_model_list ( $model, $p );

        $list_data['list_data'] = set_follow_Status_2_str($list_data['list_data']);

        $this->assign ( $list_data );

        //$this->meta_title = $model ['title'] . '列表';

        //$this->display ();
        // $model ['template_list']
        $this->assign ( 'del_button',false);
        $this->assign ( 'add_button',false);
        $this->assign ( 'search_button',false);





        $this->display ( 'Addons/lists' );
    }

    public function dataAnalysis(){

    }

    public function setting(){

    }

    public function edit($model = null,$id = 0){
        $model = $this->getModel ( 'follow' );
        $id || $id = I ( 'id' );
        if (IS_POST) {
            $act = 'save';

            $Model = D ( parse_name ( get_table_name ( $model ['id'] ), 1 ) );
            // 获取模型的字段信息
            $Model = $this->checkAttr ( $Model, $model ['id'] );
            if ($Model->create () && $Model->$act ()) {
                // dump($Model->getLastSql());
                $this->success ( '保存' . $model ['title'] . '成功！', U ( 'lists?model=' . $model ['name'] ) );
            } else {
                // dump($Model->getLastSql());
                $this->error ( $Model->getError () );
            }
        }else{
            // 获取数据
            $data = M ( get_table_name ( $model ['id'] ) )->find ( $id );
            $data || $this->error ( '数据不存在！' );

            $fields = get_model_attribute ( $model ['id'] );

            $this->assign ( 'fields', $fields );
            $this->assign ( 'data', $data );
            $this->meta_title = '编辑' . $model ['title'];

            $this->display ( 'Addons/edit' );
        }

    }


} 