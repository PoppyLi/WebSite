<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/*
| -------------------------------------------------------------------------
| Hooks
| -------------------------------------------------------------------------
| This file lets you define "hooks" to extend CI without hacking the core
| files.  Please see the user guide for info:
|
|	http://codeigniter.com/user_guide/general/hooks.html
|
*/
// AUTH 用户登录 权限控制
// 在你的控制器实例化之后,任何方法调用之前调用
$hook['post_controller_constructor'] = array(  
	'class'    => 'Acl',  
	'function' => 'auth',
	'filename' => 'acl.php',  
	'filepath' => 'hooks'  
);