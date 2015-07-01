<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE HTML>
<html>
<head>
	<meta charset="UTF-8">
<meta content="遵循Apache2开源协议,免费提供使用,微信功能插件化开发,多公众号管理,配置简单" name="keywords"/>
<meta content="weiphp 简洁强大开源的微信公众平台开发框架微信功能插件化开发,多公众号管理,配置简单" name="description"/>
<link rel="shortcut icon" href="<?php echo SITE_URL;?>/favicon.ico">
<title><?php echo empty($page_title) ? C('WEB_SITE_TITLE') : $page_title; ?></title>
<link href="/wh/Public/static/font-awesome/css/font-awesome.min.css?v=<?php echo SITE_VERSION;?>" rel="stylesheet">
<link href="/wh/Public/Home/css/base.css?v=<?php echo SITE_VERSION;?>" rel="stylesheet">
<link href="/wh/Public/Home/css/module.css?v=<?php echo SITE_VERSION;?>" rel="stylesheet">
<link href="/wh/Public/Home/css/weiphp.css?v=<?php echo SITE_VERSION;?>" rel="stylesheet">
<!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
<script src="/wh/Public/static/bootstrap/js/html5shiv.js?v=<?php echo SITE_VERSION;?>"></script>
<![endif]-->

<!--[if lt IE 9]>
<script type="text/javascript" src="/wh/Public/static/jquery-1.10.2.min.js"></script>
<![endif]-->
<!---蓝锂002适配修改 QQ:125682133--->
<!--[if gte IE 9]><!-->
<script type="text/javascript" src="/wh/Public/static/jquery-2.0.3.min.js"></script>
<!--<![endif]-->
<script type="text/javascript" src="/wh/Public/static/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="/wh/Public/static/uploadify/jquery.uploadify.min.js"></script>
<script type="text/javascript" src="/wh/Public/Home/js/dialog.js?v=<?php echo SITE_VERSION;?>"></script>
<script type="text/javascript" src="/wh/Public/Home/js/admin_common.js?v=<?php echo SITE_VERSION;?>"></script>
<script type="text/javascript" src="/wh/Public/Home/js/admin_image.js?v=<?php echo SITE_VERSION;?>"></script>
<script type="text/javascript">
var  STATIC = "/wh/Public/static";
var  ROOT = "/wh";
</script>
<!-- 页面header钩子，一般用于加载插件CSS文件和代码 -->
<?php echo hook('pageHeader');?>

</head>
<body>
	<!-- 头部 -->
	<!-- 提示 -->
<div id="top-alert" class="top-alert-tips alert-error" style="display: none;">
  <a id="cls-btn" class="close" href="javascript:;"><b class="fa fa-times-circle"></b></a>
        <div class="alert-content">这是内容</div>
        <span id="alert-dialog" style="position: absolute; right: 15px; display: none ">
            <button id="yes-btn" class="easyui-linkbutton" >确定</button> <button id="cancel-btn" class="easyui-linkbutton" >取消</button>
        </span>
</div>
<!-- 导航条
================================================== -->
<div class="navbar navbar-inverse navbar-fixed-top">
    <div class="navbar-inner">
       <a class="brand" title="<?php echo C('WEB_SITE_TITLE');?>" href="<?php echo U('index/index');?>"><img height="45" src="<?php if(C('SYSTEM_LOGO')) { echo C('SYSTEM_LOGO'); }else{ ?>/wh/Public/Home/images/top_logo.png?v=<?php echo SITE_VERSION;?> <?php } ?>" title="<?php echo C('WEB_SITE_TITLE');?>"/></a>
            
            
            <div class="top_nav">
                <?php if(is_login()): ?><ul class="nav" style="margin-right:0">
                    	<li class="dropdown">						     
                             <!-- 显示代码bug修改 -->
							 <?php if($mp_ids_list > 0): if(!empty($$member_public["public_name"])): ?><a href="<?php echo U('home/MemberPublic/lists');?>" class="dropdown-toggle login-nav" data-toggle="dropdown" title="公众号管理">公众号管理								
									  <b class="pl_5 fa fa-sort-down"></b></a><?php endif; ?>							
								  <?php if(empty($$member_public["public_name"])): ?><a href="#" class="dropdown-toggle login-nav" data-toggle="dropdown" title="<?php echo ($member_public["public_name"]); ?>"><?php echo (msubstr_local($member_public["public_name"],0,5,'utf-8')); ?><b class="pl_5 fa fa-sort-down"></b></a><?php endif; ?>		
							 <?php else: ?>
							     <a href="#" class="dropdown-toggle login-nav" data-toggle="dropdown" title="未设置公众号"><font color="red">未设置公众号</font>						
									  <b class="pl_5 fa fa-sort-down"></b></a><?php endif; ?>
                            <ul class="dropdown-menu" style="display:none">
							    <!-- 显示代码bug修改 	
								  <li><a href="<?php echo U('home/MemberPublic/lists');?>">公众号管理</a></li>	
								-->									
                                <?php if(is_array($member_public_list)): $i = 0; $__LIST__ = $member_public_list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><li><a href="<?php echo U('home/MemberPublic/changPublic','id='.$vo['id']);?>" title="<?php echo ($vo["public_name"]); ?>"><?php echo (msubstr_local($vo["public_name"],0,5,'utf-8')); ?></a></li><?php endforeach; endif; else: echo "" ;endif; ?>
                            </ul>
                        </li>
                        <li class="dropdown admin_nav">
                            <a href="#" class="dropdown-toggle login-nav" data-toggle="dropdown" style=""><?php echo get_username();?> <b class="pl_5 fa fa-sort-down"></b></a>
                            <ul class="dropdown-menu" style="display:none">
                                <li><a href="<?php echo U('Admin/index/index');?>">后台管理</a></li>
                                <li><a href="<?php echo U('User/profile');?>">修改密码</a></li>
                                <li><a href="<?php echo U('User/logout');?>">退出</a></li>
                            </ul>
                        </li>
                    </ul>
                <?php else: ?>
                    <ul class="nav" style="margin-right:0">
                    	<li style="padding-right:20px">你好!欢迎来到<?php echo C('WEB_SITE_TITLE');?></li>
                        <li>
                            <a href="<?php echo U('User/login');?>">登录</a>
                        </li>
                        <li>
                            <a href="<?php echo U('User/register');?>">注册</a>
                        </li>
                        <li>
                            <a href="<?php echo U('admin/index/index');?>" style="padding-right:0">后台入口</a>
                        </li>
                    </ul><?php endif; ?>
            </div>
        </div>
</div>
	<!-- /头部 -->
	
	<!-- 主体 -->
	
<?php if(!is_login()){ Cookie ( '__forward__', $_SERVER ['REQUEST_URI'] ); redirect(U('home/user/login')); } if(isset($_GET['sidenav'])){ $navClass[$_GET['sidenav']] = 'active'; }else{ $m = strtolower(MODULE_NAME); $c = strtolower(CONTROLLER_NAME); $a = strtolower(ACTION_NAME); $navClass[$m] = $navClass[$m.'_'.$c] = $navClass[$m.'_'.$c.'_'.$a] = 'active'; $ad = ucfirst ( parse_name ( $_REQUEST['_addons'], 1 ) ); $cl = ucfirst ( parse_name ( $_REQUEST['_controller'], 1 ) ); $navClass[$ad] = $navClass[$ad.'_'.$cl] = 'active'; } $addonList = D ( 'Addons' )->getWeixinList (false, array(), true); $categorys = M ( 'addon_category' )->order ( 'sort asc, id desc' )->select (); foreach($categorys as &$cate){ foreach($addonList as $k=>$a){ if($cate['id']==intval($a['cate_id'])){ $cate['addons'][] = $a; unset($addonList[$k]); } } } ?>
<div id="main-container" class="container">
	<div class="sidebar">
    	<ul class="sidenav">
          <li>
              <a class="sidenav_parent" href="javascript:;"><b class="ficon fa fa-plus-square"></b>帐号管理</a>
              <ul class="sidenav_sub" style="display:none">
                  <li class="<?php echo ($navClass['home_memberpublic']); ?>"> <a href="<?php echo U('Home/MemberPublic/lists');?>">公众号管理 </a> <b class="active_arrow"></b></li>
                  <li class="<?php echo ($navClass['home_index_main']); ?>"> <a href="<?php echo U('Home/Index/main');?>">插件管理 </a> <b class="active_arrow"></b></li>
                  <li class="<?php echo ($navClass['home_creditconfig_lists']); ?>"> <a href="<?php echo U('Home/CreditConfig/lists');?>">积分配置 </a> <b class="active_arrow"></b></li>
                  <li class="<?php echo ($navClass['home_keyword']); ?>"> <a href="<?php echo U('Home/Keyword/lists');?>">关键词维护 </a> <b class="active_arrow"></b></li>
                  <li class="<?php echo ($navClass['home_cascade']); ?>"> <a href="<?php echo U('Home/Cascade/lists');?>">级联数据管理 </a> <b class="active_arrow"></b></li>
                  <li class="<?php echo ($navClass['home_usermanager']); ?>"> <a href="<?php echo U('Home/UserManager/lists');?>">用户管理 </a> <b class="active_arrow"></b></li>
             </ul>
          </li>
          
          <?php if(is_array($categorys)): $i = 0; $__LIST__ = $categorys;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$ca): $mod = ($i % 2 );++$i;?><li>
              <a class="sidenav_parent" href="javascript:;"><b class="ficon fa fa-plus-square"></b><?php echo ($ca["title"]); ?></a>
              <ul class="sidenav_sub" style="display:none">
                  <?php if(is_array($ca["addons"])): $i = 0; $__LIST__ = $ca["addons"];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><li class="<?php echo ($navClass[$vo[name]]); ?>"> <a href="<?php echo ($vo[addons_url]); ?>" title="<?php echo ($vo["description"]); ?>"> 
                      <i class="icon-chevron-right"><?php if(!empty($vo['icon'])) { ?> <img src="<?php echo ($vo["icon"]); ?>" /> <?php } ?> </i>
                      <?php echo ($vo["title"]); ?> </a><b class="active_arrow"></b></li><?php endforeach; endif; else: echo "" ;endif; ?>
             </ul>
          </li><?php endforeach; endif; else: echo "" ;endif; ?>
          
          <li>
              <a class="sidenav_parent" href="javascript:;"><b class="ficon fa fa-plus-square "></b>其它功能</a>
              <ul class="sidenav_sub" style="display:none">
              <?php if(is_array($addonList)): $i = 0; $__LIST__ = $addonList;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><li class="<?php echo ($navClass[$vo[name]]); ?>"> <a href="<?php echo ($vo[addons_url]); ?>" title="<?php echo ($vo["description"]); ?>"> 
              <i class="icon-chevron-right"><?php if(!empty($vo['icon'])) { ?> <img src="<?php echo ($vo["icon"]); ?>" /> <?php } ?> </i>
              <?php echo ($vo["title"]); ?> </a> </li><?php endforeach; endif; else: echo "" ;endif; ?>
              </ul>
          </li>
        </ul>
  </div>
<div class="main_body">
	


    <link href="<?php echo ADDON_PUBLIC_PATH;?>/css/easyui.css?v=<?php echo SITE_VERSION;?>" rel="stylesheet" type="text/css">
    <link href="<?php echo ADDON_PUBLIC_PATH;?>/css/icon.css?v=<?php echo SITE_VERSION;?>" rel="stylesheet" type="text/css">
    <link href="<?php echo ADDON_PUBLIC_PATH;?>/css/demo.css?v=<?php echo SITE_VERSION;?>" rel="stylesheet" type="text/css">
    <link href="<?php echo ADDON_PUBLIC_PATH;?>/css/custombox.min.css?v=<?php echo SITE_VERSION;?>"  rel="stylesheet" type="text/css" media="screen" />
    <link href="<?php echo ADDON_PUBLIC_PATH;?>/css/modal.css?v=<?php echo SITE_VERSION;?>"  rel="stylesheet" type="text/css" media="screen" />
    <link href="<?php echo ADDON_PUBLIC_PATH;?>/css/jquery.idealforms.css?v=<?php echo SITE_VERSION;?>"  rel="stylesheet" type="text/css" media="screen" />
    <link href="<?php echo ADDON_PUBLIC_PATH;?>/css/zyUpload.css?v=<?php echo SITE_VERSION;?>"  rel="stylesheet" type="text/css" media="screen" />

    <script type="text/javascript" src="<?php echo ADDON_PUBLIC_PATH;?>/js/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="<?php echo ADDON_PUBLIC_PATH;?>/js/custombox.min.js"></script>
    <script type="text/javascript" src="<?php echo ADDON_PUBLIC_PATH;?>/js/treegrid-dnd.js"></script>
    <script type="text/javascript" src="<?php echo ADDON_PUBLIC_PATH;?>/js/jquery.idealforms.min.js"></script>
    <script type="text/javascript" src="<?php echo ADDON_PUBLIC_PATH;?>/js/jquery.idealforms.i18n.ch.js"></script>
    <script type="text/javascript" src="<?php echo ADDON_PUBLIC_PATH;?>/js/Sortable.js"></script>

    <script type="text/javascript" src="<?php echo ADDON_PUBLIC_PATH;?>/js/zyFile.js"></script>
    <script type="text/javascript" src="<?php echo ADDON_PUBLIC_PATH;?>/js/zyUpload.js"></script>

    <div class="span9 page_message">
        <section id="contents">
            <ul class="tab-nav nav">
  <?php if(is_array($nav)): $i = 0; $__LIST__ = $nav;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><li class="<?php echo ($vo["class"]); ?>"><a href="<?php echo ($vo["url"]); ?>"><?php echo ($vo["title"]); ?><span class="arrow fa fa-sort-up"></span></a></li><?php endforeach; endif; else: echo "" ;endif; ?>
</ul>
<?php if(!empty($sub_nav)): ?><div class="sub-tab-nav">
       <ul class="sub_tab">
       <?php if(is_array($sub_nav)): $i = 0; $__LIST__ = $sub_nav;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><li><a class="<?php echo ($vo["class"]); ?>" href="<?php echo ($vo["url"]); ?>"><?php echo ($vo["title"]); ?><span class="arrow fa fa-sort-up"></span></a></li><?php endforeach; endif; else: echo "" ;endif; ?>
<!--          <li><a class="cur" href="<?php echo addons_url('WeiSite://footer/lists');?>">底部菜单配置</a></li>
          <li><a href="<?php echo addons_url('WeiSite://footer/template');?>">底部菜单模板</a></li>-->
      </ul>
</div><?php endif; ?>
<?php if(!empty($normal_tips)): ?><p class="normal_tips"><b class="fa fa-info-circle"></b> <?php echo ($normal_tips); ?></p><?php endif; ?>
            <?php if($need_datainfo): $__FOR_START_2113912906__=0;$__FOR_END_2113912906__=$ayitem;for($i=$__FOR_START_2113912906__;$i < $__FOR_END_2113912906__;$i+=1){ ?><div class="index_tap total">
        <ul  class="inner" style="background-color:<?php echo ($itemArr[$i]['bgcolor']); ?>;
                                 border:<?php echo ($itemArr[$i]['bgsolid']); ?>">
            <li class="index_tap_item total_fans extra">
                <a href=" <?php echo ($itemArr[$i]['link']); ?> ">
                            <span class="tap_inner">
                                <i class="icon_index_tap" style="<?php echo ($itemArr[$i]['icon']); ?>"></i>
                                <em class="number"><?php echo ($itemArr[$i]['data']); ?> </em>
                                <strong class="title"><?php echo ($itemArr[$i]['tetil']); ?></strong>
                            </span>
                </a>


            </li>
        </ul>
    </div><?php } endif; ?>

            <div id="treeContents" style="padding: 20px">
                <span><p>商品列表</p></span>
                <div style="padding:5px;background:#fafafa;width:1008px;border:1px solid #ccc">
                    <a id="adddbtn" href="#" class="easyui-linkbutton" plain="true" iconCls="icon-add" onclick="openModalHandler('addgoods')">添加商品</a>
                    <a id="addcbtn" href="#" class="easyui-linkbutton" plain="true" iconCls="icon-add" onclick="openModalHandler('addcate')">添加类别</a>
                    <a id="delbtn" href="#" class="easyui-linkbutton" plain="true" iconCls="icon-remove" onclick="delItem()">删除</a>
                    <a id="edtbtn" href="#" class="easyui-linkbutton" plain="true" iconCls="icon-edit" onclick="openModalHandler('edit')">编辑</a>
                    <a id="expbtn" href="#" class="easyui-linkbutton" data-options="" >展开全部</a>
                    <a id="clsbtn" href="#" class="easyui-linkbutton" data-options="" >合闭全部</a>

                </div>

                <table id="tg" class="easyui-treegrid" title="商品列表" style="width:1020px;height:350px;"
                       data-options="
                    iconCls: 'icon-large-chart',
                    rownumbers: true,
                    animate: true,
                    collapsible: true,
                    fitColumns: true,
                    idField: 'id',
                    treeField: 'name',
                    showFooter: true,
                    rownumbers:false,
                    onContextMenu: onContextMenu,
                    onLoadSuccess: function(row){
					    $(this).treegrid('enableDnd', row?row.id:null);
				    }
                ">
                    <thead>
                    <tr>
                        <th data-options="field:'gid',width:50,align:'center',editor:'numberbox'">编号(ID)</th>
                        <th data-options="field:'name',width:180,editor:'text'">分类</th>
                        <th data-options="field:'selling',width:80,editor:'datebox'">售价 (元)</th>
                        <th data-options="field:'sales',width:80,editor:'datebox'">今日销量 (元|件)</th>
                        <th data-options="field:'sold',width:80,editor:'datebox'">已售 (件)</th>
                        <th data-options="field:'status',width:50,editor:'datebox'">状态</th>
                        <th data-options="field:'like',width:120,editor:'datebox'">用户评分 (星)</th>
                    </tr>
                    </thead>
                </table>
            </div>

            <div id="mm" class="easyui-menu" style="width:120px;">
                <div onclick="exitCate(false)" data-options="iconCls:'icon-undo'">退出所在类别</div>
                <div onclick="exitCate(true)" data-options="iconCls:'icon-clear'">取消类别</div>
                <div onclick="delItem()" data-options="iconCls:'icon-remove'">删除</div>
                <div class="menu-sep"></div>
                <div onclick="collapseItem()">合闭</div>
                <div onclick="expanItem()">展开</div>
            </div>



            <!-- Modal ADDCATE begin-->
            <div id="addcate-modal" class="modal-demo">
                <button type="button" class="easyui-linkbutton" style="position: absolute; top: 5px;right: 5px;" onclick="closModal();">
                    <span>&times;</span><span class="sr-only">Close</span>
                </button>
                <h4 class="modal-title">添加类别</h4>
                <div class="modal-text">
                    <form id="addCateforms" class="idealforms" novalidate autocomplete="off" action="/" method="post">
                            <div id="cate-name-div" class="field">
                                <label class="main">类别名称:</label>
                                <input  id="add-cate-input" name="catename" x type="text" data-idealforms-ajax="<?php echo ($verifyGN); ?>&kind=cate" style="width:270px">
                                <span class="error"></span>
                            </div>

                            <div style="text-align: right; padding-top: 10px">
                                <a id="sumit-cate" href="#" class="easyui-linkbutton" plain="true" onclick="formsSubmitHander(event)">确定</a>
                                <a  href="#" class="easyui-linkbutton" plain="true" onclick="closModal()">取消</a>
                            </div>
                    </form>
                </div>
            </div>
            <!-- Modal ADDCATE end-->


            <!-- Modal ADDGOODS begin-->
            <div id="addgoods-modal" class="modal-demo" >
                <button type="button" class="easyui-linkbutton" style="position: absolute; top: 5px;right: 5px;" onclick="closModal(event,true);">
                    <span>&times;</span><span class="sr-only">Close</span>
                </button>
                <h4 class="modal-title">添加商品</h4>
                <div class="modal-text">

                    <form id="addGoodsforms" class="idealforms" novalidate autocomplete="off" action="/" method="post">
                        <div class="div-inline">
                            <!-- Text -->
                            <div id="goods-name" class="field">
                                <label class="main">商品名称:</label>
                                <input id="goods-name-input" name="goodsname" type="text" data-idealforms-ajax="<?php echo ($verifyGN); ?>&kind=goods">
                                <span class="error"></span>
                            </div>


                            <div class="field">
                                <label class="main">市场价:   ￥ </label>
                                <input id="goods-mprice-input" name="mprice" type="number" min="0" max="99999">
                                <span class="error"></span>
                            </div>

                            <div class="field">
                                <label class="main">销售价:   ￥ </label>
                                <input id="goods-sprice-input" name="sprice" type="number" min="0" max="999999">
                                <span class="error"></span>
                            </div>

                            <div class="field">
                                <label class="main">赠送积分:</label>
                                <input id="goods-pawarded-input" name="pawarded" type="number" min="0" max="999999">
                                <span class="error"></span>
                            </div>


                            <div class="field">
                                <label class="main">消费方式:</label>
                                <p class="group">
                                    <label><input name="cpatterns[]" type="checkbox" value="0" data-idealforms-rules="minoption:1" checked="checked" /> 外卖配送 (外卖人员配送至客户地址) </label>
                                    <label><input name="cpatterns[]" type="checkbox" value="1" /> 店内消费 (凭消费订单到店内消费) </label>
                                    <label><input name="cpatterns[]" type="checkbox" value="2" /> 预定自提 (预定时间通知客户到店内自提)</label>
                                </p>
                                <span class="error"></span>
                            </div>

                            <!-- Textarea -->
                            <div class="field">
                                <label class="main">商品简介:</label>
                                <textarea id="goods-brief-input" name="brief" cols="30" rows="10" style="width: 290px"></textarea>
                                <span class="error"></span>
                            </div>

                        </div>


                        <div class="div-inline" style="margin-left: 35px;">
                            <!-- File -->
                            <div class="field">
                                <label><h5>商品图册:</h5></label>
                                <div style="width: 440px" >
                                    <div id="goods-albums" class="goods-albums" style="float:left">

                                    </div>
                                </div>
                                <span class="error"></span>
                            </div>
                        </div>
                    </form>
                    <h6 class="modal-title"></h6>
                    <div style="text-align: right; margin-top: 5px">
                        <a id="sumit-goods" href="#" class="easyui-linkbutton" plain="true" onclick="formsSubmitHander(event)"><h4>确定</h4></a>
                        <a  href="#" class="easyui-linkbutton" plain="true" onclick="closModal(event,true)"><h4>取消</h4></a>
                    </div>
                </div>
            </div>

            <!-- Select -->
            <div id="cateSelectDiv" class="field" style="display:none">
                <label class="main">所属类别:</label>
                <input id="cc" name="cateOptions" class="easyui-combotree" style="width:290px;" data-options="height:35">
                <span class="error"></span>
            </div>
            <!-- Modal ADDGOODS end-->

            <script type="text/javascript">
                var goodsData = <?php echo ($goodsData); ?>;
                var categoryData = <?php echo ($categoryData); ?>;
                var selectTreeItemID = 0;
                var wname = '<?php echo ($member_public["public_name"]); ?>';
                var albumsUID = 0;
                var upFileNameAry = [];
                var currModalFroms;
                var currHandFormInfo;
                var upFiles = ZYFILE.getUpFileNum();
                var allPerFiles = ZYFILE.getAllFiles();
                var isEditForms = false;

                $.ajaxSetup({
                    cache: false
                });

                $(function(){
                    $('#expbtn').bind('click', function(event){
                        $('#tg').treegrid('expandAll');
                        event.preventDefault();
                    });

                    $('#clsbtn').bind('click', function(event){
                        $('#tg').treegrid('collapseAll');
                        event.preventDefault();
                    });

                    $('#tg').treegrid({
                        data: goodsData
                    });

                    $('#tg').treegrid({ onDblClickRow: function (row) {
                        //console.log(row)
                        edit(row.id,row.isCatalog);
                    }});

                    $('#tg').treegrid({ onSelect: function (index, row) {
                        var rows = $('#tg').treegrid('getSelected');
                        if (rows)selectTreeItemID = rows.id;
                    }});


                    $('#tg').treegrid({ onDrop: function (targetRow,sourceRow,point) {
                        var isCatalog = ('isCatalog' in sourceRow) ? sourceRow.isCatalog : false;
                        var sid = isCatalog ? sourceRow.id : sourceRow.gid;
                        var tid = targetRow.id;
                        moveItem(sid,tid,isCatalog);
                    }});

                    $('#addCateforms').idealforms({
                        rules: {
                            'catename':'required ajax'
                        },
                        errors:{
                            'catename': {
                                ajax: '正在检查中...',
                                ajaxError: '该名字已存在或无法使用！'
                            }
                        }
                    });

                    $('#addGoodsforms').idealforms({
                        rules: {
                            'goodsname': 'required ajax',
                            'mprice':'required number',
                            'sprice':'required number',
                            'pawarded':'number',
                            'cpatterns[]':'minoption:1'
                        },
                        errors: {
                            'mprice':{
                                required: '价格不可以为空，必须填写！',
                                number: '价格必须是数字，以元为单位'
                            },
                            'sprice':{
                                required: '价格不可以为空，必须填写！',
                                number: '价格必须是数字，以元为单位'
                            },
                            'pawarded':{
                                number: '必须是数字，以积分点数为单位'
                            },
                            'cpatterns[]':{
                                minoption: '至少选中一项'
                            },
                            'goodsname': {
                                ajax: '正在检查中...',
                                ajaxError: '该名字已存在或无法使用！'
                            }
                        }
                    });
                });


//----------------------MODAL相关 BEGIN -------------------------------------//
                function closModal(event,isFormGoods){
                    if(isFormGoods && ZYFILE.isUploding){
                        updateAlert('正在上传图片，晢时无法关闭！','alert-error',4000);
                        return;
                    }

                    if(isFormGoods){
                        var loadedFiles = ZYFILE.getLoadFiles();
                        if(loadedFiles && loadedFiles.length > 0 && !isEditForms)
                        delFiles(loadedFiles);
                    }

                    $('#cc').combotree('hidePanel');
                    Custombox.close();
                }


                function openModalHandler(type){
                    var cateFormsInfo = {type:null,id:null,catename:null,cateoptions:null};

                    var goodsFormsInfo = {type:null,goodsname:null,cateoptions:null,
                                          mprice:null,sprice:null,pawarded:null,
                                          brief:null,cpattern:null,albums:null,albumsuid:null};


                    switch(type){
                        case 'addcate'  :
                            cateFormsInfo.type = type;
                            cateFormsInfo.cateoptions = getSetSelectValue();
                            currHandFormInfo = cateFormsInfo;
                            isEditForms = false;
                            openModal('cate',cateFormsInfo);
                            break

                        case 'addgoods' :
                            goodsFormsInfo.type = type;
                            goodsFormsInfo.cateoptions = getSetSelectValue();
                            currHandFormInfo = goodsFormsInfo;
                            isEditForms = false;
                            openModal('goods',goodsFormsInfo);
                            break

                        case 'edit' :
                            isEditForms = true;
                            var selectItem = $('#tg').treegrid('getSelected');
                            var cid = selectItem.id
                            var isCatelog = selectItem.isCatalog;
                            var itemInfo = getItemInfo(cid,isCatelog);
                            if(!itemInfo){
                                updateAlert('无法获取信息以编辑！','alert-error',2000);
                                return;
                            };
                            if(isCatelog){
                                currHandFormInfo = cateFormsInfo;
                                cateFormsInfo.type = 'cate';
                                cateFormsInfo.id = itemInfo.id;
                                cateFormsInfo.catename = itemInfo.name;
                                cateFormsInfo.cateoptions = itemInfo.pid;
                                openModal('cate',cateFormsInfo);
                            }else{
                                currHandFormInfo = goodsFormsInfo;
                                goodsFormsInfo.type = 'goods';
                                goodsFormsInfo.id = itemInfo.id;
                                goodsFormsInfo.goodsname = itemInfo.name;
                                goodsFormsInfo.cateoptions = itemInfo.cate_id;
                                goodsFormsInfo.mprice = itemInfo.mprice;
                                goodsFormsInfo.sprice = itemInfo.sprice;
                                goodsFormsInfo.pawarded = itemInfo.pawarded;
                                goodsFormsInfo.brief = itemInfo.brief;
                                goodsFormsInfo.cpattern = itemInfo.cpattern;
                                goodsFormsInfo.albums = itemInfo.albums;
                                goodsFormsInfo.albumsuid = itemInfo.albumsuid;
                                openModal('goods',goodsFormsInfo);
                            }


                            break


                    }




                    function getItemInfo(cid,isCatalog){
                        var ajURL = '<?php echo addons_url ( 'Shop://GoodsManager/getItemInfo');?>';
                                var resultData = $.ajax({url:ajURL,async:false,data:{cid:cid,isCatalog:isCatalog}});
                        if(resultData.responseJSON.info == 'success'){
                            return resultData.responseJSON.data[0];
                        }else{
                            return false;
                        }
                    }

                    function getSetSelectValue(){
                        var cateSelectData = getCateDataWithNone();
                        var pid = getRealCatePid(selectTreeItemID);
                        var cateItem = getCateItemByID(pid,categoryData);
                        if(cateItem){
                            return cateItem.id;
                        }else{
                            return cateSelectData[0].id;
                        }
                    }

                }



                function openModal(type,formsInfo){
                    var tagerModal;
                    var modalWidth;
                    var selectorStr  = (type === 'cate' ? '#addCateforms':'#addGoodsforms');
                    currModalFroms = $(selectorStr);
                    resetModalFroms();
                    var cateSelectData = getCateDataWithNone();
                    $('#cc').combotree({data:cateSelectData});
                    $('#cc').combotree('setValue',formsInfo.cateoptions);
                    switch(type){
                        case "cate":
                            tagerModal = '#addcate-modal';
                            modalWidth = 350;
                            $('#cateSelectDiv').insertAfter('#cate-name-div');
                            $('#cateSelectDiv').css('display','block');

                            //设置表单信息
                            if(formsInfo.catename)currModalFroms.find('#add-cate-input').val(formsInfo.catename);
                            break;

                        case "goods":
                            initZyUpload();
                            albumsUID = this.GUIGenerator(8, 16);
                            tagerModal = '#addgoods-modal';
                            modalWidth = 800;
                            $('#cateSelectDiv').insertAfter('#goods-name');
                            $('#cateSelectDiv').css('display','block');

                            //设置表单信息 $("input[name='items']:checked").val();
                            if(formsInfo.goodsname)currModalFroms.find('#goods-name-input').val(formsInfo.goodsname);
                            if(formsInfo.mprice)currModalFroms.find('#goods-mprice-input').val(formsInfo.mprice);
                            if(formsInfo.sprice)currModalFroms.find('#goods-sprice-input').val(formsInfo.sprice);
                            if(formsInfo.pawarded)currModalFroms.find('#goods-pawarded-input').val(formsInfo.pawarded);
                            //if(formsInfo.cpattern)currModalFroms.find('#input[name="cpatterns[]"]').val(formsInfo.cpattern)
                            if(formsInfo.brief)currModalFroms.find('#goods-brief-input').val(formsInfo.brief);
                            if(formsInfo.cpattern){
                                var cp = $("input[name='cpatterns[]']");
                                var cpatternAry = formsInfo.cpattern.split(',');
                                for(x in cpatternAry){
                                    var index = cpatternAry[x];
                                    var citem = cp[parseInt(index)];
                                    citem.checked = "checked";
                                }
                                console.log('fdfd');
                            }

                            break
                    }



                    Custombox.open({
                        target: tagerModal,
                        effect: 'fadein',
                        overlayClose:false,
                        width:modalWidth,
                        open:function(){
                            setComboPanleOnTop();
                            ////修复下拉树型菜单
                            function setComboPanleOnTop(){
                                currModalFroms.click(function(event){
                                    if(event.target.className.indexOf('textbox') > -1){
                                        var modal_z =  $('.custombox-overlay.custombox-overlay-fadein.custombox-overlay-default').css('z-index');
                                        $('.panel.combo-p').css('z-index',modal_z + 2);
                                    }
                                });
                            }
                        },
                        close:function(){
                            $('#cateSelectDiv').appendTo('#contents');
                            $('#cateSelectDiv').css('display','none');
                            currModalFroms = null;
                        }
                    });
                }

                function formsSubmitHander(event){
                         selectTreeItemID = $('#cc').combotree('getValue');
                         currHandFormInfo.cateoptions = getRealCatePid(selectTreeItemID);
                         switch(event.currentTarget.id){
                             case "sumit-cate":
                                 verifyCateSubmit(function(){
                                     currHandFormInfo.catename = $('#add-cate-input').val().trim();
                                     addCategory(currHandFormInfo);
                                 });
                                 break;

                             case "sumit-goods":
                                 verifyGoodsSubmit(function(){
                                     currHandFormInfo.goodsname = $('#goods-name-input').val().trim();
                                     currHandFormInfo.mprice = $('#goods-mprice-input').val().trim();
                                     currHandFormInfo.sprice = $('#goods-sprice-input').val().trim();
                                     currHandFormInfo.pawarded = $('#goods-pawarded-input').val().trim();
                                     currHandFormInfo.brief = $('#goods-brief-input').val().trim();
                                     currHandFormInfo.albums = getAblumsData();
                                     currHandFormInfo.albumsuid = albumsUID;

                                     var cp = $("input[name='cpatterns[]']:checked");
                                     var tempAry = [];
                                     for(var i = 0; i < cp.length; i++){
                                         var citem = cp[i];
                                         tempAry.push(citem.value);
                                     }
                                     currHandFormInfo.cpattern = tempAry.join();
                                     addGoods(currHandFormInfo);

                                     function getAblumsData(){
                                         var upLoadedList = $("#goods-albums").zyUpload('getMovebleFiles',true);
                                         var upLoadAry = ZYFILE.getAliases(upLoadedList);
                                         return upLoadAry.join();
                                     }
                                 });
                                 break;
                         }
                }

                function verifyCateSubmit(passHandler){
                    var erros = $('#addCateforms').idealforms('get:invalid');
                    var tipStr;
                    if(erros.length > 0){
                        tipStr = '填写 '+ getFormErrFieldStr(erros) +'信息无效或不完整，请重新填写！';
                        updateAlert(tipStr,'alert-error',5000);
                    }else{
                        passHandler(0);
                    }
                }

                function verifyGoodsSubmit(passHandler){
                       if( ZYFILE.isUploding){
                           updateAlert('正在上传图片，晢时无法提交，请稍后....','alert-warn',4000);
                           return;
                       }
                       upFiles = ZYFILE.getUpFileNum();
                       allPerFiles = ZYFILE.getAllFiles();
                       var tipStr;
                       var handler;
                       var erros = $('#addGoodsforms').idealforms('get:invalid');

                       if(erros.length > 0){
                           tipStr = '填写 '+ getFormErrFieldStr(erros) +'信息无效或不完整，请重新填写！';
                           handler = null;
                           updateAlert(tipStr,'alert-error',5000);
                       }else{

                           if(upFiles.length > 0){
                               tipStr = '测试还有 ' + upFiles.length + ' 张图片未上传,现在提交数据将忽略这些图片，是否确定提交数据？';
                               handler = function (t){
                                   if(t){
                                       passHandler();
                                   }else{
                                       updateAlert('您可以上传或删除，处理这些图片。以便提交数据。','alert-warn',5000);
                                   }

                               };
                               updateAlert(tipStr,'alert-warn',5000,true,handler);

                           }else if (allPerFiles.length == 0){
                               tipStr = '商品图册还没有相片，现在提交数据商品图册将无图片，是否确定提交数据？';
                               handler = function (t){
                                   if(t){
                                       passHandler();
                                   }else{
                                       updateAlert('您可以添加图片到预览框，然后点击“开始上传”按钮，上传图片至商品相册.','alert-warn',5000);
                                   }

                               };
                               updateAlert(tipStr,'alert-warn',5000,true,handler);

                           }else{
                               passHandler();
                           }
                       }
                }

                function resetModalFroms(){
                    if(!currModalFroms)return;
                    currModalFroms.idealforms('reset');
                    if(currModalFroms.selector == '#addGoodsforms'){
                        var fdsa = $('#goods-brief');
                        $('#goods-brief').val('');
                    }else{

                    }
                }

                function getFormErrFieldStr(errorInfo){
                         var retStr = '';
                         for (x = 0; x < errorInfo.length; x++){
                             var errText = errorInfo[x].innerText;
                                 errText = errText.substring(0,errText.indexOf(':'));
                                 retStr += '"' + errText + '" ';
                         }
                         return retStr;
                }

                function checkSelect(){
                    var isSelect = false;
                    if (this.selectTreeItemID == 0){
                        updateAlert('请选中分类条目后再操作...！','alert-error',2000);
                        isSelect = false;
                    }else{
                        isSelect = true;
                    }
                    return isSelect;
                }

                function addCategory(formInfo){
                    var ajURL = '<?php echo addons_url ( 'Shop://GoodsManager/addCateNode');?>';
                    var resultData = $.ajax({url:ajURL,async:false,data:formInfo,dataType:'json'});
                    if(resultData.responseJSON.info == 'success'){
                        updateAlert('添加成功！','alert-success',2000);
                        Custombox.close()
                        goodsData = JSON.parse(resultData.responseJSON.data.CGJson);
                        categoryData = JSON.parse(resultData.responseJSON.data.CJson);
                        $('#tg').treegrid({data: goodsData});
                        //$('#tg').treegrid('select', resultData.responseJSON.data.id);

                    }else{
                        updateAlert('无法添加该类别' + resultData.responseJSON.data,'alert-error',2000);
                    }
                }


                function addGoods(formInfo){
                    var ajURL = '<?php echo addons_url ( 'Shop://GoodsManager/addGoods');?>';
                            var resultData = $.ajax({url:ajURL,async:false,data:formInfo,dataType:'json'});
                    if(resultData.responseJSON.info == 'success'){
                        updateAlert('添加成功！','alert-success',2000);
                        Custombox.close()
                        goodsData = JSON.parse(resultData.responseJSON.data.CGJson);
                        categoryData = JSON.parse(resultData.responseJSON.data.CJson);
                        //$('#tg').treegrid('unselect',selectTreeItemID);
                        $('#tg').treegrid({data: goodsData});
                        $('#tg').treegrid('reload');
                        //$('#tg').treegrid('select', resultData.responseJSON.data.id);

                    }else{
                        updateAlert('无法添加该类别' + resultData.responseJSON.data,'alert-error',2000);
                    }

                }

                function getRealCatePid(pid){
                    var returnPid = pid;
                    var item = getCateItemByID(pid,goodsData);//$('#tg').treegrid('getSelected');
                    if(!item || item === null){
                        returnPid = 0;
                    }else{
                        item.isCatalog ? returnPid = pid :returnPid = item._parentId;
                    }
                    return returnPid;
                }

                function getCateItemByID(id,checkData){
                    var cItem;
                    checkItem(checkData);
                    return cItem;

                    function checkItem(arr){
                        var item;
                        for(x in arr){
                            item = arr[x];
                            if(item.isCatalog){
                                if(item.id == id){
                                    cItem = arr[x];
                                    return;
                                    break;
                                }else{
                                    if(item.children){
                                        checkItem(item.children);
                                    }else{
                                        continue;
                                    }
                                }
                            }else{
                                if(item.id == id) {
                                    cItem = arr[x];
                                    return;
                                    break;
                                }
                            }
                        }
                        return item;
                    }
                }


                function getCateDataWithNone(){
                    var copyCategoryData = categoryData.slice();
                    var noneStr = '----- 无 (不属于任何类别) -----';
                    var insertOBJ = {id:'0',text:noneStr,name:noneStr};
                    copyCategoryData.splice(0, 0, insertOBJ);
                    return copyCategoryData;
                }

                function initZyUpload(){
                    $("#goods-albums").empty();
                    $("#goods-albums").zyUpload({
                        width            :   "440px",                 // 宽度
                        height           :   "550px",                 // 宽度
                        itemWidth        :   "120px",                 // 文件项的宽度
                        itemHeight       :   "100px",                 // 文件项的高度
                        url              :   "http://upload.qiniu.com/",  // 上传文件的路径
                        multiple         :   true,                    // 是否可以多个文件上传
                        dragDrop         :   false,                    // 是否可以拖动上传文件
                        del              :   true,                    // 是否可以删除文件
                        finishDel        :   false,  				  // 是否在上传文件完成后删除预览
                        get7TokenURL     :"<?php echo addons_url ( 'Shop://GoodsManager/get7Token');?>",
                        /* 外部获得的回调接口 */
                        onSelect: function(files, allFiles){                    // 选择文件的回调方法
                            console.info("当前选择了以下文件：");
                            console.info(files);
                            console.info("之前没上传的文件：");
                            console.info(allFiles);
                        },
                        onShowedFiles: function(allFiles){

                        },
                        onDelete: function(file, surplusFiles){                     // 删除一个文件的回调方法
                            console.info("当前删除了此文件：");
                            console.info(file);
                            console.info("当前剩余的文件：");
                            console.info(surplusFiles);
                            if(file.hasOwnProperty('aliases')){
                                var delFile = [file];
                                delFiles(delFile);
                            }
                        },
                        onSuccess: function(file){                    // 文件上传成功的回调方法
                            console.info("此文件上传成功：");
                            console.info(file);
                        },
                        onFailure: function(file){                    // 文件上传失败的回调方法
                            console.info("此文件上传失败：");
                            console.info(file);
                        },
                        onComplete: function(responseInfo){           // 上传完成的回调方法
                            console.info("文件上传完成");
                            console.info(responseInfo);
                        }
                    });
                }

                function delFiles(files){
                    var delStr = getFilesStr(files);
                    var data = {keys:delStr,albumsuid:albumsUID};
                    var ajURL = '<?php echo addons_url ( 'Shop://GoodsManager/delFiles');?>';
                            var resultData = $.ajax({url:ajURL,async:false,data:data,dataType:'json'});

                    if(resultData.responseJSON.info == 'success'){
                        updateAlert('删除图片成功！','alert-success',2000);
                    }else{
                        updateAlert('删除图片失败','alert-error',2000);
                    }

                    function getFilesStr(files){
                        var tempAry = [];
                        for(var i = 0; i < files.length; i++){
                            var file = files[i];
                            tempAry.push(file.aliases);
                        }
                        return tempAry.join();
                    }
                }

//----------------------MODAL相关 END -------------------------------------//


                function onContextMenu(e,row){
                    e.preventDefault();
                    $(this).treegrid('select', row.id);
                    var cutbn = $('#mm').menu('findItem','取消类别');
                    if(!row.isCatalog){
                        $('#mm').menu('disableItem', cutbn.target);
                    }else{
                        $('#mm').menu('enableItem', cutbn.target);
                    }

                    $('#mm').menu('show',{
                        left: e.pageX,
                        top: e.pageY
                    });
                }





                function delItem(){
                    if(!checkSelect())return;

                    updateAlert('删除商品或类后，将不可恢复。是否确定删除？','alert-warn',5000,true,alertHandler);

                    function alertHandler(t){
                             if(t){
                                 delNow();
                             }else{
                                 closeAlert();
                             }
                    }

                    function delNow(){
                        var item = $('#tg').treegrid('getSelected');
                        var data = {cid:item.id,isGoods:!item.isCatalog};
                        var ajURL = '<?php echo addons_url ( 'Shop://GoodsManager/delItem');?>';
                                var resultData = $.ajax({url:ajURL,async:false,data:data,dataType:'json'});

                        if(resultData.responseJSON.info == 'success'){
                            updateAlert('删除成功！','alert-success',2000);
                            goodsData = JSON.parse(resultData.responseJSON.data.CGJson);
                            categoryData = JSON.parse(resultData.responseJSON.data.CJson);
                            $('#tg').treegrid('unselect',selectTreeItemID);
                            $('#tg').treegrid({data: goodsData});
                            selectTreeItemID = 0;
                        }else{
                            updateAlert('删除失败','alert-error',2000);
                        }

                        this.selectTreeItemID = 0;
                    }


                }




                function save(){

                }


                function clearUPCata(sid){
                    var ajURL = '<?php echo addons_url ( 'Shop://GoodsManager/clearUPCate');?>';
                            ajURL =  ajURL.replace('.html','/') + 'sourceCID/' + sid;

                    var resultData = $.ajax({url:ajURL,async:false});
                    resultData.responseJSON.info == 'success' ? updateAlert('取消类别成功！','alert-success',2000):updateAlert('取消类别失败！','alert-error',2000);
                    goodsData = JSON.parse(resultData.responseJSON.data.CGJson);
                    categoryData = JSON.parse(resultData.responseJSON.data.CJson);
                    $('#tg').treegrid({data: goodsData });
                }

                function moveItem(sid,tid,isCatalog){
                    var ajURL = '<?php echo addons_url ( 'Shop://GoodsManager/moveItem');?>';
                            ajURL =  ajURL.replace('.html','/') + 'targetCID/' + tid + '/sourceCID/' + sid + '/isCatalog/' + isCatalog;
                    var resultData = $.ajax({url:ajURL,async:false});
                    resultData.responseJSON.info == 'success' ? updateAlert('移动成功！','alert-success',2000):updateAlert('移动失败！','alert-error',2000);
                    goodsData = JSON.parse(resultData.responseJSON.data.CGJson);
                    categoryData = JSON.parse(resultData.responseJSON.data.CJson);
                    $('#tg').treegrid({data: goodsData });
                }

                function exitCate(isClearUpCate){
                    var node = $('#tg').treegrid('getSelected');
                    var isCatalog = ('isCatalog' in node) ? node.isCatalog : false;
                    var grandpa = getGrandpa(node);
                    var sid = isCatalog ? node.id : node.gid;
                    var tid =  isClearUpCate ? 0 : (grandpa ? grandpa.id : 0);

                    if(isClearUpCate){
                        clearUPCata(sid);
                    }else{
                        moveItem(sid,tid,isCatalog);
                    }



                    function getGrandpa(node){
                             var grandpaItem;
                             var pid = node.isCatalog ? node.pid : node._parentId;
                             var fater = getCateItemByID(pid,goodsData);

                             if(fater) {
                                 var fpid = fater.isCatalog ? fater.pid : fater._parentId;
                                 grandpaItem = getCateItemByID(fpid,goodsData);
                             }
                             return grandpaItem;
                    }
                }



                function expanItem(){
                    var node = $('#tg').treegrid('getSelected');
                    if (node) $('#tg').treegrid('expand', node.id);
                }

                function collapseItem(){
                    var node = $('#tg').treegrid('getSelected');
                    if (node)  $('#tg').treegrid('collapse', node.id);
                }

                function saveOrder() {
                    var data = $("#list1 li").map(function() { return $(this).children().html(); }).get();
                    $("input[name=list1SortOrder]").val(data.join("|"));
                };

            </script>


        </section>
    </div>

</div>
</div>
	<!-- /主体 -->

	<!-- 底部 -->
	
    <!-- 底部
    ================================================== -->
<footer class="footer">
      <div class="container">
          <p>
          	<a href="<?php echo U('Home/Index/about');?>" target="_blank">关于我们</a>  |  
            <a href="<?php echo U('home/index/help');?>" target="_blank">使用说明</a>   |   
            本系统由<a href="http://www.weiphp.cn" target="_blank">weiphp</a>强力驱动
            </p>
      </div>
</footer>

<script type="text/javascript">
(function(){
	var ThinkPHP = window.Think = {
		"ROOT"   : "/wh", //当前网站地址
		"APP"    : "/wh/index.php?s=", //当前项目地址
		"PUBLIC" : "/wh/Public", //项目公共目录地址
		"DEEP"   : "<?php echo C('URL_PATHINFO_DEPR');?>", //PATHINFO分割符
		"MODEL"  : ["<?php echo C('URL_MODEL');?>", "<?php echo C('URL_CASE_INSENSITIVE');?>", "<?php echo C('URL_HTML_SUFFIX');?>"],
		"VAR"    : ["<?php echo C('VAR_MODULE');?>", "<?php echo C('VAR_CONTROLLER');?>", "<?php echo C('VAR_ACTION');?>"]
	}
})();
</script>
 <!-- 用于加载js代码 -->
<!-- 页面footer钩子，一般用于加载插件JS文件和JS代码 -->
<?php echo hook('pageFooter', 'widget');?>
<div class="hidden"><!-- 用于加载统计代码等隐藏元素 -->
	
</div>

	<!-- /底部 -->
</body>
</html>