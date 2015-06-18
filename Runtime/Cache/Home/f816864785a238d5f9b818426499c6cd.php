<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
    <link rel="stylesheet" type="text/css" href="/wh/Public/Home/css/font-awesome.css?v=<?php echo SITE_VERSION;?>" media="all">
	<link rel="stylesheet" type="text/css" href="/wh/Public/Home/css/mobile_module.css?v=<?php echo SITE_VERSION;?>" media="all">
    <script type="text/javascript" src="/wh/Public/static/jquery-2.0.3.min.js"></script>
    <script type="text/javascript" src="/wh/Public/Home/js/prefixfree.min.js"></script>
    <script type="text/javascript" src="/wh/Public/Home/js/m/dialog.js?v=<?php echo SITE_VERSION;?>"></script>
    <script type="text/javascript" src="/wh/Public/Home/js/m/flipsnap.min.js"></script>
    <script type="text/javascript" src="/wh/Public/Home/js/m/mobile_module.js?v=<?php echo SITE_VERSION;?>"></script>
    <script type="text/javascript" src="/wh/Public/Home/js/admin_common.js?v=<?php echo SITE_VERSION;?>"></script>
	<title><?php echo empty($page_title) ? C('WEB_SITE_TITLE') : $page_title; ?></title>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
	<meta content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no" name="viewport">
    <meta content="application/xhtml+xml;charset=UTF-8" http-equiv="Content-Type">
    <meta content="no-cache,must-revalidate" http-equiv="Cache-Control">
    <meta content="no-cache" http-equiv="pragma">
    <meta content="0" http-equiv="expires">
    <meta content="telephone=no, address=no" name="format-detection">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black-translucent">
    <link rel="shortcut icon" href="<?php echo SITE_URL;?>/favicon.ico">
</head>	
<link href="<?php echo CUSTOM_TEMPLATE_PATH;?>Detail/V2/detail.css?v=<?php echo SITE_VERSION;?>" rel="stylesheet" type="text/css">
<body id="weisite">
<div class="container">
	<div class="detail">
    	<h6 class="title"><?php echo ($info["title"]); ?></h6>
        <p class="info"><span class="colorless"><?php echo (time_format($info["cTime"])); ?></span></p>
        <section class="content">
                <?php if(!empty($info["cover"])): ?><p><img src="<?php echo (get_cover_url($info["cover"])); ?>"/></p><?php endif; ?>
                <?php echo (htmlspecialchars_decode($info["content"])); ?>
        </section>
    </div>
</div>
<!-- 底部导航 -->
<?php echo ($footer_html); ?>
<!-- 统计代码 -->
<?php if(!empty($config["code"])): ?><p class="hide bdtongji">
<?php echo ($config["code"]); ?>
</p><?php endif; ?>
</body>
</html>