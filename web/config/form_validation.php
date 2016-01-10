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
    ),
    "create" => array(
        array(
            'field'   => 'uname', 
            'label'   => '用户名', 
            'rules'   => 'trim|required|alpha_dash|strtolower|callback_uname_check'
        ),
        array(
            'field'   => 'gid', 
            'label'   => '用户组', 
            'rules'   => 'trim|required'
        ),
        array(
            'field'   => 'pwd', 
            'label'   => '密码', 
            'rules'   => 'trim|required|min_length[6]|matches[pwdre]'
        ),
        array(
            'field'   => 'pwdre', 
            'label'   => '验证密码', 
            'rules'   => 'trim|required|min_length[6]'
        ),
        array(
            'field'=> 'email',
            'lable'=> '邮件地址',
            'rules'=> 'trim|valid_email'
        ),
        array(
            'field' => 'tel',
            'lable' => '电话',
            'rules' => 'trim|numeric'
        ),
        array(
            'field' => 'phone',
            'lable' => '手机',
            'rules' => 'trim|numeric'
        ),
        array(
            'field' => 'addr',
            'lable' => '地址',
            'rules' => 'trim|xss_clean'
        )
    ),
    "edit" => array(            
        array(
            'field'   => 'id', 
            'label'   => '帐号', 
            'rules'   => 'trim|required|numeric|callback_mid_check'
        ),
        array(
            'field'   => 'uname', 
            'label'   => '用户名', 
            'rules'   => 'trim|required|alpha_dash|strtolower'
        ),
        array(
            'field'=> 'email',
            'lable'=> '邮件地址',
            'rules'=> 'trim|valid_email'
        )   ,
        array(
            'field'=> 'email',
            'lable'=> '邮件地址',
            'rules'=> 'trim|valid_email'
        ),
        array(
            'field' => 'tel',
            'lable' => '电话',
            'rules' => 'trim|numeric'
        ),
        array(
            'field' => 'phone',
            'lable' => '手机',
            'rules' => 'trim|numeric'
        ),
        array(
            'field' => 'addr',
            'lable' => '地址',
            'rules' => 'trim|xss_clean'
        )
    ),
    // TODO : 放入到 Module 中
    "passwd" => array(
        array(
            'field'   => 'mid', 
            'label'   => '帐号', 
            'rules'   => 'trim|required|numeric|callback_mid_check'
        ),
        array(
            'field'   => 'pwdo', 
            'label'   => '密码', 
            'rules'   => 'trim|min_length[6]|callback_passwd_check'
        ),
        array(
            'field'   => 'pwd', 
            'label'   => '密码', 
            'rules'   => 'trim|required|min_length[6]|matches[pwdre]'
        ),
        array(
            'field'   => 'pwdre', 
            'label'   => '验证密码', 
            'rules'   => 'trim|required|min_length[6]'
        ),
    )
);

$config['error_prefix'] = '<span style="color:#f00">';
$config['error_suffix'] = '</span>';
?>