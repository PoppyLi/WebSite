<div class="header navbar navbar-inverse navbar-fixed-top">
    <div class="navbar-inner">
        <div class="container-fluid">
            <a class="brand" href="index.html"><img src="/static/image/logo.png" alt="logo"/></a>
            <a href="javascript:;" class="btn-navbar collapsed" data-toggle="collapse" data-target=".nav-collapse">
            <img src="/static/image/menu-toggler.png" alt="" />
            </a>
            <ul class="nav pull-right">
                <li><a href="#"><i class="icon-globe"></i> 浏览前台</a></li>
                <li class="dropdown user">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                    <img alt="" src="/static/image/avatar1_small.jpg" />
                    <span class="username"><?php echo $this->session->userdata('uname');?></span>
                    <i class="icon-angle-down"></i>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="extra_profile.html"><i class="icon-user"></i> 用户信息</a></li>
                        <li class="divider"></li>
                        <li><a href="extra_lock.html"><i class="icon-key"></i> 修改密码</a></li>
                        <li><a href="<?php echo site_url('admin/login/logout');?>"><i class="icon-signout"></i> 退出</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</div>
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
            <li class="<?php echo ($ch_url=='main')?'start active':'';?>">
                <a href="<?php echo site_url('admin/main');?>">
                    <i class="icon-home"></i> 
                    <span class="title">首页信息</span>
                    <span class="selected"></span>
                </a>
            </li>
            <li class="">
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
            <li class="<?php echo ($ch_url=='manager')?'active':'';?>">
                <a href="javascript:;">
                  <i class="icon-user"></i>  
                  <span class="title">账号管理</span>
                  <span class="arrow "></span>
                </a>
                <ul class="sub-menu">
                    <li class="<?php echo ($url=='manager_group')?'active':'';?>"><a href="<?php echo site_url('admin/manager_group')?>">用户组</a></li>
                    <li class="<?php echo ($url=='manager')?'active':'';?>"><a href="<?php echo site_url('admin/manager')?>">用户管理</a></li>
                    <li class="<?php echo ($url=='manager_purview')?'active':'';?>"><a href="<?php echo site_url('admin/manager_purview')?>">权限管理</a></li>                     
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