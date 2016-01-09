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
				<li class="">
					<a href="<?php echo site_url('admin/main');?>">
						<i class="icon-home"></i> 
						<span class="title">首页信息</span>
						<span class="selected"></span>
					</a>
				</li>
                <li class="start active">
					<a href="javascript:;">
                      <i class="icon-sitemap"></i>
                      <span class="title">栏目管理</span>
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
                      <span class="title">表单数据</span>
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
                      <span class="title">内容管理</span>
                      <span class="arrow "></span>
					</a>
					<ul class="sub-menu">
						<li><a href="ui_general.html">模块列表</a></li>
						<li><a href="ui_buttons.html">栏目列表</a></li>
					</ul>
				</li>
                <li class="">
					<a href="javascript:;">
                      <i class="icon-user"></i>  
                      <span class="title">用户管理</span>
                      <span class="arrow "></span>
					</a>
					<ul class="sub-menu">
						<li><a href="ui_general.html">账号管理</a></li>
						<li><a href="ui_buttons.html">权限管理</a></li>
						<li><a href="ui_buttons.html">用户组</a></li>
					</ul>
				</li>
                <li class="">
                	<a href="<?php echo site_url('admin/main');?>">
						<i class="icon-cogs"></i>
						<span class="title">系统管理</span>
						<span class="arrow "></span>
					</a>
                    <ul class="sub-menu">
                    	<li><a href="ui_general.html">站点设置</a></li>
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
						<h3 class="page-title"></h3>
						<ul class="breadcrumb">
							<li>
								<i class="icon-home"></i>
								<a href="index.html">Home</a> 
								<i class="icon-angle-right"></i>
							</li>
							<li><a href="#">Dashboard</a></li>
						</ul>
					</div>
					<div class="row-fluid">
						<div class="span4">
							<div class="portlet box blue">
								<div class="portlet-title">
									<div class="caption"><i class="icon-user-md"></i>用户状态</div>
									<div class="tools"><a href="javascript:;" class="collapse"></a></div>
								</div>
								<div class="portlet-body">
									<dl>
										<dt>用户名:</dt>
										<dd>A description list is perfect for defining terms.</dd>
										<dt>用户组：</dt>
										<dd>V</dd>
										<dt>登录IP：</dt>
										<dd>Etiam porta sem malesuada magna mollis euismod.</dd>
										<dt>最后活动时间:</dt>
										<dd>Etiam porta sem malesuada magna mollis euismod.</dd>
									</dl>
								</div>
							</div>
						</div>
						<div class="span4">
							<div class="portlet box red">
								<div class="portlet-title">
									<div class="caption"><i class="icon-dashboard"></i>服务器</div>
									<div class="tools"><a href="javascript:;" class="collapse"></a></div>
								</div>
								<div class="portlet-body">
									<dl>
										<dt>服务器地址:</dt>
										<dd>A description list is perfect for defining terms.</dd>
										<dt>服务器端口：</dt>
										<dd>V</dd>
										<dt>./cache/可写：</dt>
										<dd>Etiam porta sem malesuada magna mollis euismod.</dd>
										<dt>upload/可写:</dt>
										<dd>Etiam porta sem malesuada magna mollis euismod.</dd>
										<dt>上传大小限制:</dt>
										<dd>Etiam porta sem malesuada magna mollis euismod.</dd>
									</dl>
								</div>
							</div>
						</div>
						<div class="span4">
							<div class="portlet box green">
								<div class="portlet-title">
									<div class="caption"><i class="icon-rss"></i>站点公告</div>
									<div class="tools"><a href="javascript:;" class="collapse"></a></div>
								</div>
								<div class="portlet-body">
									<table class="table">
										<tr>
											<td>服务器地址:</td>
											<td class="text-left">111</td>
										</tr>
									</table>
									<dl class="dl-horizontal">
										<dt>服务器地址:</dt>
										<dd>A description list is perfect for defining terms.</dd>
									</dl>
									<dl class="dl-horizontal">
										<dt>服务器端口：</dt>
										<dd>V</dd>
									</dl>
									<dl class="dl-horizontal">
										<dt>./cache/可写：</dt>
										<dd>Etiam porta sem malesuada magna mollis euismod.</dd>
									</dl>
									<dl class="dl-horizontal">
										<dt>upload/可写:</dt>
										<dd>Etiam porta sem malesuada magna mollis euismod.</dd>
									</dl>
									<dl class="dl-horizontal">
										<dt>上传大小限制:</dt>
										<dd>Etiam porta sem malesuada magna mollis euismod.</dd>
									</dl>
								</div>
							</div>
						</div>
					</div>					
				</div>
			</div>
		</div>
	</div>    
	<?php $this->load->view('admin/common/footer');?>
</body>
</html>