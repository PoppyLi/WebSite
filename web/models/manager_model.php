<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Manager_model extends MY_Model{	
	protected $tab_man = 'manager';
	protected $tab_man_gro = 'manager_group';

	//检测帐号是否存在
	public function find_name($uname){
		$query = $this->db->select('id')->get_where($this->tab_man,array('uname' =>$uname));
		if ($this->db->affected_rows()) {
			$id = $query->row_array();	
			return $id['id'];
		}else{
			return false;
		}
	}
	
	//登录时提取数据
	public function get_login($id){
		$query = $this->db
			->select('id,uname,nickname,gid,status,pwd,pwd_errors,login_time')
			->get_where($this->tab_man,array('id'=>$id));
		return $query->row_array();
	}
	
	//返回权限信息
	public function get_group($gid){
		$query = $this->db
			->select('title,purview')
			->get_where($this->tab_man_gro,array('id' => $gid));
		return $query->row_array();
	}
	
	//密码输入错误
	public function set_pwderr($id, $clear = FALSE){
		if (!$clear) {
			$this->db->set('pwd_errors','pwd_errors+1',FALSE);
		}else{
			$this->db->set('pwd_errors',0);
		}		
		$this->db->set('login_ip',$this->input->ip_address());
		$this->db->set('login_time',time());
		$this->db->where('id',$id);
		$this->db->update($this->tab_man);
		return $this->db->affected_rows();
	}
	
	// 登录成功后保存登录信息
	public function set_login($id)
	{
		$this->db->set('login_ip',$this->input->ip_address());
		$this->db->set('login_time',time());
		$this->db->set('pwd_errors',0);
		$this->db->where('id',$id);
		$this->db->update($this->tab_man);
		return $this->db->affected_rows();
	}
}