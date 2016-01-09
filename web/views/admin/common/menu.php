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
                <li class="start active">
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
                <li class="">
                    <a href="javascript:;">
                      <i class="icon-user"></i>  
                      <span class="title">账号管理</span>
                      <span class="arrow "></span>
                    </a>
                    <ul class="sub-menu">
                        <li><a href="<?php echo site_url('admin/user')?>">用户组</a></li>
                        <li><a href="<?php echo site_url('admin/user')?>">用户管理</a></li>
                        <li><a href="<?php echo site_url('admin/user')?>">权限管理</a></li>                     
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