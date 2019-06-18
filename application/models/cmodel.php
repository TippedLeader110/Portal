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
	public function setGambar($a){
		$id = uniqid();
		$ab = $this->_uploadImage($id);
		$data = array('link' => $ab, 'deskripsi' => $a->desk, 'tipe' => $a->tipe);
		$this->db->insert('img', $data);
	}
	private function _uploadImage($id,$c)
	{
	    $config['upload_path']          = base_url('source/gambar/galery');
	    $config['allowed_types']        = 'gif|jpg|png';
	    $config['file_name']            = $id;
	    $config['overwrite']			= true;
	    $config['max_size']             = 1024; // 1MB
	    // $config['max_width']            = 1024;
	    // $config['max_height']           = 768;

	    $this->load->library('upload', $config);

	    if ($this->upload->do_upload('file')) {
	        return $this->upload->data("file_name");
	    }
	    
	    return "default.jpg";
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

	public function savePostnow($title,$waktu,$Kategori,$isi, $stat, $cover){
		$data = array('judul' => $title, 'tanggal' => $waktu, 'id_kategori' => $Kategori, 'isi' => $isi, 'status' => $stat, 'id_user' => $this->session->userdata('id'), 'cover' => $cover);
		$this->db->insert('post', $data);
	}

	public function updatePostnow($title,$waktu,$Kategori,$isi, $stat, $cover, $id){
		$this->db->set('judul', $title);
		$this->db->set('tanggal', $waktu);
		$this->db->set('kategori', $kategori);
		$this->db->set('isi', $isi);
		$this->db->set('cover', $cover);
		$this->db->set('stat', $stat);
		$this->db->where('id_post', $id);
		$this->db->update('navitem');
	}

	function simpan_upload($judul,$image,$tipe){
        $data = array(
                'deskripsi' => $judul,
                'link' => $image,
                'tipe' => $tipe
            );  
        $result= $this->db->insert('img',$data);
        return $result;
    }

    function simpan_cover($image, $ii){
        $this->db->set('cover', $image);
		$this->db->where('id_post', $ii);
		$this->db->update('post');
    }

    public function saveGurunow($nama,$jabatan,$alamat,$mapel){
		$data = array('nama_guru' => $nama, 'id_jabatan' => $jabatan, 'alamat' => $alamat, 'id_mapel' => $mapel);
		$this->db->insert('guru', $data);
	}

	public function jumlah_data($data){
		return $this->db->get($data)->num_rows();
	}

	function data($number,$offset){
		return $query = $this->db->get('img',$number,$offset)->result();		
	}
	function jabat_guru($number,$offset){
		return $query = $this->db->get('jabatan_guru',$number,$offset)->result();
	}
	function mapel($number,$offset){
		return $query = $this->db->get('mapel',$number,$offset)->result();
	}
	function allpost($number,$offset){
		return $query = $this->db->get('allpost',$number,$offset)->result();
	}
	function kate($number,$offset){
		return $query = $this->db->get('kategori',$number,$offset)->result();
	}

}

?>