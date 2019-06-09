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

	public function pNama($data){
		$this->db->set('nama_sekolah', $data);
		$this->db->where('id_identitas', 1);
		$this->db->update('identitas');
	}

	public function pVisi($data){
		$this->db->set('Visi', $data);
		$this->db->where('id_identitas', 1);
		$this->db->update('identitas');
	}

	public function pSejarah($data){
		$this->db->set('Sejarah', $data);
		$this->db->where('id_identitas', 1);
		$this->db->update('identitas');
	}

	public function pMisi($data){
		$this->db->set('Misi', $data);
		$this->db->where('id_identitas', 1);
		$this->db->update('identitas');
	}

	public function getNavbar(){
		$this->db->order_by("id_item", "asc");
		$data = $this->db->get('navitem');
		$data = $data->result();
		return $data;
	}

	public function getnavDrop($ab){
		$this->db->where('id_item', $ab);
		$data = $this->db->get('subnavitem');
		$data = $data->result();
		return $data;
	}

	public function upidNav($a, $b){
		$this->db->set('id_item', $b);
		$this->db->where('id_item', $a);
		$this->db->update('navitem');
	}	

}

?>