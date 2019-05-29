<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class cmodel extends CI_Model {

	public function getWarna(){
		$query = $this->db->get("tema");
		return $query->result();		
	}

	public function setWarna($a,$b){
		$data = array('warna_tema' => $a, 'label' => $b);
		$this->db->insert('tema', $data);
	}
	public function delWarna($a){
		$this->db->where('id_tema', $a);
		$this->db->delete('tema');
	}
	public function getIdentitas(){
		$res = $this->db->get('identitas');
		return $res->result();
	}

}

?>