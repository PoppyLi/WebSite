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
								<i class="icon-angle-right"></i>
							</li>
							<li>
								<a href="#">账号管理</a>
								<i class="icon-angle-right"></i>
							</li>
							<li><a href="#">权限管理</a></li>
						</ul>
					</div>
				</div>				
				<div class="row-fluid">			
					<div class="clearfix">
							<a href="<?php echo site_url('admin/manager/create'); ?>" class="btn green" ><i class="icon-plus"></i> 权限</a>
					</div>									
					<table class="table table-striped table-hover table-bordered">
						<thead>
							<tr>
								<th>编号</th>
								<th>用户组名称</th>
								<th>操作</th>
							</tr>
						</thead>
						<tbody>
							<tr class="">
								<td></td>
								<td></td>
								<td class="span3"><a class="edit" href="javascript:;">编辑</a>    <a class="delete" href="javascript:;">删除</a></td>
							</tr>				
						</tbody>
					</table>
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