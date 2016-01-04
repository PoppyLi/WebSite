<?php
$config = array(
    'login' => array(
        array(
            'field' => 'username',
            'label' => '用户名',
            'rules' => 'trim|required|strtolower|callback_uname_check',
			'errors' => array(
            	'required' => '用户名不能为空',
        	),
        ),
        array(
            'field' => 'password',
            'label' => '密码',
            'rules' => 'trim|required|callback_passwd',
			'errors' => array(
            	'required' => '密码不能为空',
        	),
        )
    )
);

$config['error_prefix'] = '<span style="color:#f00">';
$config['error_suffix'] = '</span>';
?>