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
    <?php $this->load->view('admin/common/link');?>
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
				<label class="checkbox"><input type="checkbox" name="remember" value="1"/> Remember me</label>
				<button type="submit" class="btn green pull-right">Login <i class="m-icon-swapright m-icon-white"></i></button>            
			</div>
		</form>
	</div>
   	<div class="copyright">2016 &copy; Website. Admin Dashboard Template.</div>
	<?php $this->load->view('admin/common/footer');?>
</body>
</html>