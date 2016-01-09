<?php 
// 主要放置后台 UI 生成器

if (!function_exists('ui_btn_switch')) {
	/**
	 * btn swtich 生成器
	 * @param  string field 字段
	 * @param  any default 默认值
	 * @param  array $arr 列表表  [{title:xxx,value:xxx}],分类 会将 value 取 id
	 * @return html
	 */
	function ui_btn_switch($field=false,$default=false,$arr=false){
		if ($field ===false or $arr===false or $default===false) {
			return false;
		}
		$tmp = '<div class="btn-group btn-switch">';
		// 保证array中有  title ,value 
		foreach ($arr as $k => $v) {
			// 针对分类
			if (isset($v['id'])) {
				$value = $v['id'];
			}else{
				$value = $v['value'];
			}

			$class= set_switch($field,$value,$default,'btn-primary','');
			$tmp .= '<a href="#" data-value="'.$value.'" class="btn '.$class.'">'.$v['title'].'</a>';
		}
		$tmp .= '</div>';
		$tmp .= '<input type="hidden" id="'.$field.'" name="'.$field.'" value="'.set_value($field,$default).'">';
		return $tmp;	
	}
}

if (!function_exists('ui_btn_select')) {
	/**
	 * btn select 生成器
	 * @param  string field 字段
	 * @param  any default 默认值
	 * @param  array $arr 列表表  [{title:xxx,value:xxx}],分类 会将 value 取 id
	 * @return html   
	 */
	function ui_btn_select($field=false,$default=false,$arr=false){
		if ($field ===false or $arr===false or $default===false) {
			return false;
		}

		$tmp = '<select name="'.$field.'" id="'.$field.'" class="bselect">';
		// 保证array中有  title ,value 
		foreach ($arr as $k => $v) {
			// 针对分类
			if (isset($v['id'])) {
				$value = $v['id'];
			}else{
				$value = $v['value'];
			}

			// 对深度支持
			$depth = '';
			$more = '';
			if (isset($v['depth'])) {
				$depth = 'data-option-depth="'.$v['depth'].'"';
			}

			if (isset($v['more'])) {
				$more = 'data-option-more="'.$v['more'].'"';
			}

			$tmp .= '<option value="'.$value.'"'.$depth.$more.set_switch($field, $value, $default, ' selected="selected" class="option-select" ','').'>'.$v['title'].'</option>';

		}
		$tmp .= '</select>';
		return $tmp;	
	}
}


if (!function_exists('ui_btn_coltypes')) {
	/**
	 * 类别按钮
	 * @param  string $ids 上传列表值
	 * @return array       数组
	 */
	function ui_btn_coltypes($cid=0,$field=false){
		if (!is_numeric($cid) or !$field) {
			return false;
		}
		$CI =& get_instance();
		$url = site_url('coltypes/index/').'?cid='.$cid.'&field='.$field.'&rc='.$CI->class;
		$tmp = '<a href="'.$url.'" class="btn btn-info" title="'.lang($field).'">管理'.lang($field).'</a>';
		return $tmp;
	}
}

// TODO:废弃
if (!function_exists('ui_btns_coltypes')) {
	/**
	 * 类别列表按钮
	 * @param  integer $cid     cid
	 * @param  boolean $field   类别字段
	 * @param  boolean $baseurl 基本地址
	 * @return string           按钮组
	 */
	function ui_btns_coltypes($cid=0,$field=false,$baseurl=false){

		$tmp = '<div class="btn-group">';
		$active = false;
		if (isset($_GET[$field])) {
			$active = $_GET[$field];
		}
		if (!$active) {
			$tmp .= '<a href="'.$baseurl.'" class="btn btn-primary">所有</a>';
		}else{
			$tmp .= '<a href="'.$baseurl.'" class="btn">所有</a>';
		}
		$CI =& get_instance();
		$arr = list_coltypes($cid,'typea');
		foreach ($arr as $k => $v) {
			$tmp .='<a href="'.$baseurl.'&'.$field.'='.$v['id'].'" class="btn';
			if ($v['id'] == $active) {
				$tmp .= " btn-primary";
			}
			$tmp .='">'.$v['title'].'</a>';
		}
		$tmp .="</div>";
		return $tmp;
	}
}

// 获取栏目名称
if(!function_exists('tag_columns'))
{
	function tag_columns($id,$column='title')
	{
		static $a=array();
		$id=intval($id);
		if(!isset($a[$id])){
			$CI=&get_instance();
			$CI->load->database();
			$a[$id]=$CI->db->get_where('columns',array('id'=>$id));
			if($a[$id]->num_rows()<1){
				$a[$id]=array();
			}else{
				$a[$id]=$a[$id]->row_array();
			}
		}
		if(isset($a[$id][$column])){
			return $a[$id][$column];
		}
		return '';
	}
}
