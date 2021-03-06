<?php
/**
 * Created by PhpStorm.
 * User: fusion
 * Date: 15-5-30
 * Time: 上午9:07
 */

namespace Addons\Shop\Controller;
use Home\Controller\AddonsController;
use Qiniu\Auth;
use Qiniu\Storage\BucketManager;

class GoodsManagerController extends BaseController{

    private $need_datainfo = false;
    private $token;

    function _initialize() {
        parent::_initialize ();
        $this->$token =  get_token ();
        $this->assign ('need_datainfo',$this -> $need_datainfo);

    }

    public function verifyName(){
        $map ['token'] = get_token ();
        $kind = I('get.kind');
        $isEdit = I('get.isEdit');
        switch($kind){
            case 'cate':
                $name = I('post.catename');
                $model = M("shop_category");
                break;

            case 'goods':
                $name = I('post.goodsname');
                $model = M("shop_goods");
                break;
        }

        if($isEdit == 'true'){
            $id = I('get.id');
            $map['id'] = $id;
            $oriName = $model->where($map)->select();
            $oriName = $oriName[0]['name'];
            if($oriName == $name){
                $retOK = true;
            }else{
                unset($map['id']);
                $map ['name'] = $name;
                $hasOne = $model->where($map)->select();
                $retOK = !$hasOne;
            }
        }else{
            $map ['name'] = $name;
            $hasOne = $model->where($map)->select();
            $retOK = !$hasOne;
        }

        echo json_encode($retOK);

    }

    public function getCategoryJData($id = 0){
        $testary = get_category_goods_ary($id);
        $this->ajaxReturn($testary);
    }

    public function getCategoryJson(){
           $ary = get_category_array();
           return  $this->ajaxReturn($ary);
    }

    public function get7Token(){
        $auth = get7Auth();
        $bucket = 'weixin';
        $token = $auth->uploadToken($bucket, null, 3600);
        echo $token;
    }

    public function delFiles(){
           $keys = I('keys');
           $albumsuid = I('albumsuid');
           $map['albumsuid'] = $albumsuid;
           $map ['token'] = get_token ();
           $keys =  explode(",", $keys);
           $errs = false;

           $rtInfo = $this->delItemPics($keys);
           if(!is_null($rtInfo[1]))$errs = $rtInfo[1];

           if ($errs) {
                $data['errs'] = $errs;
                $resulData['info'] = 'error';
                $resulData['data'] = $data;
                $this->ajaxReturn($resulData);
           } else {
               $goodsModel = M("shop_goods");
               $hasOne = $goodsModel->where($map)->select();

               if($hasOne){
                   $albumsStr = $goodsModel->where($map)->field('albums')->select();
                   $expStr =  $albumsStr[0][albums];
                   $albums = explode(",", $expStr);
                   $afterDelAlbums = array_diff($albums,$keys);
                   $data['albums'] = join(',',$afterDelAlbums);
                   $isSaveGoods = $goodsModel->where($map)->data($data)->save();
                   if($isSaveGoods){
                       $resulData['info'] = 'success';
                       $resulData['data'] = '成功删除图片';
                       $this->ajaxReturn($resulData);
                   }else{
                       $data['errs'] = $errs;
                       $resulData['info'] = 'error';
                       $resulData['data'] = $data;
                       $this->ajaxReturn($resulData);
                   }

               }else{
                   $resulData['info'] = 'success';
                   $resulData['data'] = '成功删除图片';
                   $this->ajaxReturn($resulData);
               }
           }



    }

    public function getItemInfo(){
           $map ['token'] = get_token ();
           $isCatelog = I('isCatalog');
           $model = null;
           $filedStr = '';
           if($isCatelog){
               $map ['id'] =  I('cid');
               $model = M("shop_category");
               $filedStr = 'id,name,pid,state';
           }else{
               $map ['cid'] =  I('cid');
               $model = M("shop_goods");
               $filedStr = 'id,name,cate_id,mprice,sprice,pawarded,brief,albums,albumsuid,cpattern';
           }

           $hasOne = $model->where($map)->field($filedStr)->select();
           $hasOne[0][exstorageURL] = 'http://7xjsh9.com1.z0.glb.clouddn.com/';
           if($hasOne){
               $resulData['info'] = 'success';
               $resulData['data'] = $hasOne;
               $this->ajaxReturn($resulData);
           }else{
               $resulData['info'] = 'erroe';
               $resulData['data'] = '无法获取指定信息.';
               $this->ajaxReturn($resulData);
           }
    }

    public function addCateNode(){
           $name = I('catename');
           $pid = I('cateoptions');
           $map ['token'] = get_token ();
           $map ['pid'] =  $pid;
           $map ['name'] =  $name;
           $resulData = '';
           $cateModel = M("shop_category");

           $hasOne = $cateModel->where($map)->select();

           if($hasOne){
               $resulData['info'] = 'error';
               $resulData['data'] = ', 已有相同类别存在！';
               $this->ajaxReturn($resulData);
               return;
           }

           $data['token'] = $map ['token'];
           $data['state'] = 'open';
           $data['name'] = $name;
           $data['pid'] = $pid;
           $isAdded = $cateModel -> add($data);

           if($isAdded){
               $data['id'] = $isAdded;
               $data['CGJson'] = get_category_goods_json();
               $data['CJson'] = get_category_json();
               $resulData['info'] = 'success';
               $resulData['data'] = $data;
               $this->ajaxReturn($resulData);
           }else{
               $resulData['info'] = 'error';
               $resulData['data'] = ', 服务端出现错误:'.$isAdded;
               $this->ajaxReturn($resulData);
           }
    }

    public function addGoods(){
           $name = I('goodsname');
           $pid = I('cateoptions');
           $map ['token'] = get_token ();
           $map ['pid'] =  $pid;
           $map ['name'] =  $name;
           $goodsModel = M("shop_goods");
           $resulData = '';
           $hasOne = $goodsModel->where($map)->select();

           if($hasOne){
               $resulData['info'] = 'error';
               $resulData['data'] = ', 已有相同类别存在！';
               $this->ajaxReturn($resulData);
               return;
           }

            $data['token'] = $map ['token'];
            $data['name'] = $name;
            $data['cate_id'] = $pid;
            $data['mprice']   = I('mprice');
            $data['sprice']   = I('sprice');
            $data['pawarded'] = I('pawarded');
            $data['brief']    = I('brief');
            $data['albums']   = I('albums');
            $data['albumsuid']   = I('albumsuid');
            $data['cpattern'] = I('cpattern');
            $data['cTime']    = time();


            $isAdded = $goodsModel -> add($data);


            if($isAdded){
                $data['id'] = $isAdded;
                $data['CGJson'] = get_category_goods_json();
                $data['CJson'] = get_category_json();
                $resulData['info'] = 'success';
                $resulData['data'] = $data;
                $this->ajaxReturn($resulData);
            }else{
                $resulData['info'] = 'error';
                $resulData['data'] = ', 服务端出现错误:'.$isAdded;
                $this->ajaxReturn($resulData);
            }

    }

    public function clearUPCate(){
           $sourceCID = I('sourcecid');
           $saveGoodsMap ['token'] = get_token ();
           $saveGoodsMap ['cate_id'] = $sourceCID;
           $delCataMpa ['token'] = get_token ();
           $delCataMpa ['id'] = $sourceCID;
           $data['cate_id'] = 0;
           $isSaveGoods = M('shop_goods')->where($saveGoodsMap)->data($data)->save();
           $isDelCata = M('shop_category')->where($delCataMpa)->delete();

           $data['CGJson'] = get_category_goods_json();
           $data['CJson'] = get_category_json();
           $resulData['info'] = ($isDelCata) ? 'success':'error';
           $resulData['data'] = $data;
           $this->ajaxReturn($resulData);

    }

    public function moveItem(){
           $targetCID = I('targetcid');
           $sourceCID = I('sourcecid');
           $isCatelog = I('iscatalog');
           $isClearUpCate = I('isClearUpCate');
           $map ['token'] = get_token ();
           $map ['id'] = $sourceCID;
           if($isCatelog != 'true'){
               $data['cate_id'] = $targetCID;
               $isSave = M('shop_goods')->where($map)->data($data)->save();
           }else{
               $data['pid'] = $targetCID;
               $isSave = M('shop_category')->where($map)->data($data)->save();
           }
          $data['CGJson'] = get_category_goods_json();
          $data['CJson'] = get_category_json();
          $resulData['info'] = $isSave ? 'success':'error';
          $resulData['data'] = $data;
          $this->ajaxReturn($resulData);
    }


    public function index(){

        $map ['token'] = get_token ();
        session ( 'common_condition', $map );
        $this->addAyDatas();
        $cgJson = json_encode(get_category_goods_ary());
        $cJson =  json_encode(get_category_array());
        //echo(json_encode($testary));

        $this->assign ('cate_data_url',addons_url ( 'Shop://GoodsManager/getCategoryJData' ));
        $this->assign ('cate_json_url',addons_url ( 'Shop://GoodsManager/getCategoryJson' ));
        $this->assign ('goodsData',$cgJson);
        $this->assign ('categoryData',$cJson);
        $this->assign ('verifyGN',addons_url ( 'Shop://GoodsManager/verifyName' ));




        $list_data = $this->_get_model_list ( $this->model );

//        // 分类数据
//        $map ['is_show'] = 1;
//        $list = M ( 'weisite_category' )->where ( $map )->field ( 'id,title' )->select ();
//        $cate [0] = '';
//        foreach ( $list as $vo ) {
//            $cate [$vo ['id']] = $vo ['title'];
//        }
//
//        foreach ( $list_data ['list_data'] as &$vo ) {
//            $vo ['cate_id'] = intval ( $vo ['cate_id'] );
//            $vo ['cate_id'] = $cate [$vo ['cate_id']];
//        }
//        $this->assign ( $list_data );
//        // dump ( $list_data );

       $templateFile = $this->model ['template_list'] ? $this->model ['template_list'] : '';
        $this->display ( $templateFile );

    }

    public function editGoods(){
        $map ['token'] = get_token ();
        $map ['id'] =   I('id');
        $goodsModel = M("shop_goods");
        $perAlbums = $goodsModel->where($map)->field('albums')->select();
        $perAlbums = $perAlbums[0][albums];
        $perAlbums = explode(',',$perAlbums);
        $upAlbums = explode(',', I('albums'));
        $diffAlbums = array_diff($perAlbums,$upAlbums);
        $delAlbums = null;
        foreach ($diffAlbums as $key=>$val ) {
               $isHasOne = in_array($val,$perAlbums);
               if($isHasOne)$delAlbums[] = $val;
        }
        if(count($delAlbums) > 0) $rtInfo = $this->delItemPics($delAlbums);


        $data['token'] = $map ['token'];
        $data['name'] = I('goodsname');;
        $data['cate_id'] =  I('cateoptions');
        $data['mprice']   = I('mprice');
        $data['sprice']   = I('sprice');
        $data['pawarded'] = I('pawarded');
        $data['brief']    = I('brief');
        $data['albums']   = I('albums');
        $data['albumsuid']   = I('albumsuid');
        $data['cpattern'] = I('cpattern');
        $data['mTime']    = time();


        $isSave = $goodsModel->where($map)->save($data);

        $data['CGJson'] = get_category_goods_json();
        $data['CJson'] = get_category_json();
        $resulData['info'] = $isSave ? 'success':'error';
        $resulData['data'] = $data;
        $this->ajaxReturn($resulData);



    }

    public function editCate(){
        $map ['token'] = get_token ();
        $map ['id'] =   I('id');
        $cateModel = M("shop_category");


        $data['token'] = $map ['token'];
        $data['name'] = I('catename');;
        $data['pid'] =  I('cateoptions');
        $data['state'] =  I('open');


        $isSave = $cateModel->where($map)->save($data);

        $data['CGJson'] = get_category_goods_json();
        $data['CJson'] = get_category_json();
        $resulData['info'] = $isSave ? 'success':'error';
        $resulData['data'] = $data;
        $this->ajaxReturn($resulData);
    }

    public function delItem(){
        $id = i('cid');
        $isGoods = I('isGoods');

        if($isGoods == 'true'){
            $map ['token'] = get_token ();
            $map['cid'] = $id;
            $delGoods = M('shop_goods')->where($map)->select();
            $this->delGoodsAlbums($delGoods);
            $delGoodsNum = M('shop_goods')->where($map)->delete();
            if(count($delGoodsNum) > 0)$isDel = true;
        }else{
            $goodsmap ['token'] =  $catemap ['token'] = get_token ();
            $goodsmap ['cate_id'] = $catemap['id'] = $id;
            $delGoods = M('shop_goods')->where($goodsmap)->select();
            $this->delGoodsAlbums($delGoods);

            $delCateNum = M('shop_category')->where($catemap)->delete();
            $delGoodsNum = M('shop_goods')->where($goodsmap)->delete();

            if($delGoodsNum > 0){
                $isDel = $delCateNum && $delGoodsNum;
            }else{
                $isDel = $delCateNum;
            }

        }






        $data['CGJson'] = get_category_goods_json();
        $data['CJson'] = get_category_json();
        $resulData['info'] = $isDel ? 'success':'error';
        $resulData['data'] = $data;
        $this->ajaxReturn($resulData);
    }


    private function delGoodsAlbums($delGoods){
        //删除图片
        if(count($delGoods) > 0){
            $albums = '';
            foreach($delGoods as $key=>$val){
                $astr = $val['albums'];
                $albums = $albums . ',' .$astr;
            }
            $albums = substr($albums,1,strlen($albums));
            $albums = explode(',',$albums);

            $this->delItemPics($albums);
        }
    }


    private function delItemPics($files){
            $auth = get7Auth();
            $bucket = 'weixin';
            $bucketMgr = new BucketManager($auth);

            $batchDel= $bucketMgr->buildBatchDelete($bucket,$files);
            $rtInfo = $bucketMgr->batch($batchDel);
            return $rtInfo;
    }

    public function lists(){
        $this->display ('index');
    }

    private function  addAyDatas(){
        $this->$need_datainfo = true;
        $this->assign ('need_datainfo',$this->$need_datainfo);

        if($this->$need_datainfo){
            $aydata = [];

            $aydata = add_tongji_item($aydata,
                '#B960D2',
                '1px solid #9F50B5',
                'background:url(Public/Home/images/ayicons.png) 0 0px no-repeat',
                '8888',
                '总销量',
                '#');

            $aydata = add_tongji_item($aydata,
                '#6660ff',
                '1px solid #ff5000',
                'background:url(Public/Home/images/ayicons.png) 0 15px no-repeat',
                'skk奶酪',
                '销量冠军',
                '#');

            $aydata = add_tongji_item($aydata,
                '#8866ff',
                '1px solid #ff6600',
                'background:url(Public/Home/images/ayicons.png) 0 15px no-repeat',
                '震怒有',
                '这是什么',
                '#');

            $aydata = add_tongji_item($aydata,
                '#663022',
                '1px solid #ff5055',
                'background:url(Public/Home/images/ayicons.png) 0 15px no-repeat',
                '￥1008',
                '营业额',
                '#');

            $ayitem = count($aydata);
            $this->assign ('ayitem',$ayitem);
            $this->assign ('itemArr',$aydata);
        }
    }
}
