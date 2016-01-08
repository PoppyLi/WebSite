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

<body class="page-header-fixed">
	<?php $this->load->view('admin/common/header');?>
	<div class="page-container">
		<div class="page-sidebar nav-collapse collapse">
			<ul class="page-sidebar-menu">
				<li>
					<div class="sidebar-toggler hidden-phone"></div>
				</li>                
				<li>
					<form class="sidebar-search">
						<div class="input-box">
							<a href="javascript:;" class="remove"></a>
							<input type="text" placeholder="Search..." />
							<input type="button" class="submit" value=" " />
						</div>
					</form>
				</li>
				<li class="start active ">
					<a href="<?php echo site_url('admin/main');?>">
						<i class="icon-home"></i> 
						<span class="title">首页信息</span>
						<span class="selected"></span>
					</a>
				</li>
                <li class="">
					<a href="javascript:;">
                      <i class="icon-sitemap"></i>
                      <span class="title">菜单管理</span>
                      <span class="arrow "></span>
					</a>
					<ul class="sub-menu">
						<li><a href="ui_general.html">所有页面</a></li>
						<li><a href="ui_buttons.html">新建页面</a></li>
					</ul>
				</li>
				<li class="">
					<a href="javascript:;">
                      <i class="icon-briefcase"></i> 
                      <span class="title">页面管理</span>
                      <span class="arrow "></span>
					</a>
					<ul class="sub-menu">
						<li><a href="ui_general.html">所有页面</a></li>
						<li><a href="ui_buttons.html">新建页面</a></li>
					</ul>
				</li>
				<li class="">
					<a href="javascript:;">
                      <i class="icon-file-text"></i> 
                      <span class="title">文章管理</span>
                      <span class="arrow "></span>
					</a>
					<ul class="sub-menu">
						<li><a href="ui_general.html">所有页面</a></li>
						<li><a href="ui_buttons.html">新建页面</a></li>
					</ul>
				</li>
                <li class="">
					<a href="javascript:;">
                      <i class="icon-user"></i>  
                      <span class="title">用户管理</span>
                      <span class="arrow "></span>
					</a>
					<ul class="sub-menu">
						<li><a href="ui_general.html">所有页面</a></li>
						<li><a href="ui_buttons.html">新建页面</a></li>
					</ul>
				</li>
                <li class="">
					<a href="javascript:;">
                      <i class="icon-picture"></i>  
                      <span class="title">图片管理</span>
                      <span class="arrow "></span>
					</a>
					<ul class="sub-menu">
						<li><a href="ui_general.html">所有页面</a></li>
						<li><a href="ui_buttons.html">新建页面</a></li>
					</ul>
				</li>
                <li class="">
                	<a href="<?php echo site_url('admin/main');?>">
						<i class="icon-cogs"></i>
						<span class="title">站点设置</span>
						<span class="arrow "></span>
					</a>
                    <ul class="sub-menu">
						<li><a href="ui_general.html">查看日志</a></li>
						<li><a href="ui_buttons.html">数据备份</a></li>
					</ul>
				</li>
			</ul>
		</div>
        
		<div class="page-content">       
			<div class="container-fluid">
				<div class="row-fluid">
					<div class="span12">						
						<h3 class="page-title">Dashboard <small>statistics and more</small></h3>
						<ul class="breadcrumb">
							<li>
								<i class="icon-home"></i>
								<a href="index.html">Home</a> 
								<i class="icon-angle-right"></i>
							</li>
							<li><a href="#">Dashboard</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>    
	<?php $this->load->view('admin/common/footer');?>
</body>
</html>