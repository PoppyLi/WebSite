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