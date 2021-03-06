<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!--> <html lang="zh-CN" no-js> <!--<![endif]-->
<!-- BEGIN HEAD -->
<head>
	<meta charset="utf-8" />	
	<meta content="width=device-width, initial-scale=1.0" name="viewport" />
	<meta content="" name="description" />
	<meta content="" name="author" />
    <title>Website</title>
	<!-- BEGIN GLOBAL MANDATORY STYLES -->
	<link href="/static/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
	<link href="/static/css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css"/>
	<link href="/static/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
	<link href="/static/css/style-metro.css" rel="stylesheet" type="text/css"/>
	<link href="/static/css/style.css" rel="stylesheet" type="text/css"/>
	<link href="/static/css/style-responsive.css" rel="stylesheet" type="text/css"/>
	<link href="/static/css/default.css" rel="stylesheet" type="text/css" id="style_color"/>
	<link href="/static/css/uniform.default.css" rel="stylesheet" type="text/css"/>
	<!-- END GLOBAL MANDATORY STYLES -->

	<!-- BEGIN PAGE LEVEL STYLES -->
	<link href="/static/css/login.css" rel="stylesheet" type="text/css"/>
	<!-- END PAGE LEVEL STYLES -->

	<link rel="shortcut icon" href="/static/image/favicon.ico" />
</head>

<body class="login">
	<div class="logo"><img src="" alt="" /></div>
	<div class="content">
		<?php echo form_open('admin/login','class="form-vertical login-form"');?>
			<h3 class="panel-title"><strong>网站管理系统登录</strong></h3>
			<div class="alert alert-error hide">
				<button class="close" data-dismiss="alert"></button>
				<span>Enter any username and password.</span>
			</div>
			<div class="control-group">
				<!--ie8, ie9 does not support html5 placeholder, so we just show field title for that-->
				<label class="control-label visible-ie8 visible-ie9">用户名</label>
				<div class="controls">
					<div class="input-icon left">
						<i class="icon-user"></i>
						<input class="m-wrap placeholder-no-fix" type="text" placeholder="用户名" name="username" value="<?php echo set_value('username');?>"/>
					</div><?php echo form_error('username');?>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label visible-ie8 visible-ie9">密码</label>
				<div class="controls">
					<div class="input-icon left">
						<i class="icon-lock"></i>
						<input class="m-wrap placeholder-no-fix" type="password" placeholder="密码" name="password"/>
					</div><?php echo form_error('password');?>
				</div>
			</div>

			<div class="form-actions">
				<label class="checkbox"><input type="checkbox" name="remember" value="1"/> 记住登录</label>
				<button type="submit" class="btn green pull-right">Login <i class="m-icon-swapright m-icon-white"></i></button>            
			</div>
		</form>
	</div>
   	<div class="copyright">2016 &copy; Website. Admin Dashboard Template.</div>

	<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
	<!-- BEGIN CORE PLUGINS -->
	<script src="/static/js/jquery-1.10.1.min.js" type="text/javascript"></script>
	<script src="/static/js/jquery-migrate-1.2.1.min.js" type="text/javascript"></script>
	<!-- IMPORTANT! Load jquery-ui-1.10.1.custom.min.js before bootstrap.min.js to fix bootstrap tooltip conflict with jquery ui tooltip -->
	<script src="/static/js/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>
	<script src="/static/js/bootstrap.min.js" type="text/javascript"></script>
	<!--[if lt IE 9]>
	<script src="/static/js/excanvas.min.js"></script>
	<script src="/static/js/respond.min.js"></script>  
	<![endif]-->   

	<script src="/static/js/jquery.slimscroll.min.js" type="text/javascript"></script>
	<script src="/static/js/jquery.blockui.min.js" type="text/javascript"></script>  
	<script src="/static/js/jquery.cookie.min.js" type="text/javascript"></script>
	<script src="/static/js/jquery.uniform.min.js" type="text/javascript" ></script>
	<!-- END CORE PLUGINS -->

	<!-- BEGIN PAGE LEVEL PLUGINS -->
	<script src="/static/js/jquery.validate.min.js" type="text/javascript"></script>
	<!-- END PAGE LEVEL PLUGINS -->

	<!-- BEGIN PAGE LEVEL SCRIPTS -->
	<script src="/static/js/app.js" type="text/javascript"></script>   
	<!-- END PAGE LEVEL SCRIPTS --> 

	<script>
		jQuery(document).ready(function() {     
		  App.init();
		  Login.init();
		});
	</script>

	<!-- END JAVASCRIPTS -->
</body>
</html>