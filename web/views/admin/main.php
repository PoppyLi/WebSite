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
		<div class="page-content">
			<div class="container-fluid">
				<div class="row-fluid">
					<div class="span12">						
						<h3 class="page-title"></h3>
						<ul class="breadcrumb">
							<li>
								<i class="icon-home"></i>
								<a href="index.html">首页</a>
							</li>
						</ul>
					</div>
				</div>
				<div class="row-fluid">
					<div class="span4">
						<div class="portlet box blue">
							<div class="portlet-title">
								<div class="caption"><i class="icon-user-md"></i>用户状态</div>
								<div class="tools"><a href="javascript:;" class="collapse"></a></div>
							</div>
							<div class="portlet-body">
								<table class="table table-striped table-bordered table-advance table-hover">
									<tbody>
										<tr>
											<td>用户名：</td>
											<td><?php echo $this->session->userdata('uname'); ?></td>
										</tr>
										<tr>
											<td>用户组：</td>
											<td><?php echo $user_group;?></td>
										</tr>
										<tr>
											<td>登录IP：</td>
											<td><?php echo $this->session->userdata('login_ip'); ?></td>
										</tr>
										<tr>
											<td>最后活动时间：</td>
											<td><?php echo date('Y-m-d H:i:s',$this->session->userdata('last_activity'));?></td>
										</tr>
									</tbody>
								</table>
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
								<table class="table table-striped table-bordered table-advance table-hover">
										<tbody>
											<tr>
												<td>服务器地址：</td>
												<td><?php echo $server_add?></td>
											</tr>
											<tr>
												<td>服务器端口：</td>
												<td><?php echo $server_port?></td>
											</tr>
											<tr>
												<td>缓存是否可写：</td>
												<td><?php echo $cache_enable?></td>
											</tr>
											<tr>
												<td>上传是否可写:</td>
												<td><?php echo $upload_enable?></td>
											</tr>
											<tr>
												<td>上传大小限制:</td>
												<td><?php echo $upload_size?></td>
											</tr>
										</tbody>
								</table>
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
								站点建设中。。。。。
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>    
	<?php $this->load->view('admin/common/footer');?>
	<script>
		jQuery(document).ready(function() {    
		   App.init(); // initlayout and core plugins
		   Index.init();
		   Index.initJQVMAP(); // init index page's custom scripts
		   Index.initCalendar(); // init index page's custom scripts
		   Index.initCharts(); // init index page's custom scripts
		});
	</script>
</body>
</html>