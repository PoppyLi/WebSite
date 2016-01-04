<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Manager_model extends MY_Model{
	
	protected $table = 'manager';

	// 检测帐号是否存在
	public function find_name($uname)
	{
		$query = $this->db->select('id')->get_where($this->table,array('uname' =>$uname));
		if ($this->db->affected_rows()) {
			$id = $query->row_array();	
			return $id['id'];
		}else{
			return false;
		}
	}
	
	// 登录时提取数据
	public function get_login($id)
	{
		$query = $this->db
			->select('id,uname,nickname,gid,status,pwd,pwd_errors,login_time')
			->get_where($this->table,array('id'=>$id));
		return $query->row_array();
	}
}