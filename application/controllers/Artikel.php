<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Artikel extends CI_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/Artikel
	 *	- or -
	 * 		http://example.com/index.php/Artikel/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/Artikel/<method_name>
	 * @see https://codeigniter.com/user_guide/general/urls.html
	 */
	public function index($slug)
	{
		$data['datanav'] = $this->db->get('navitem')->result();
		$data['id'] = $this->db->get('identitas')->result();
		$da = $data['id'];
		foreach ($da as $key => $daval) {
		}
		if ($daval->lartikel==1) {
		$data['v1'] = "page/artikel_v";
		}elseif ($daval->lartikel==2) {
			$data['v1'] = "page/artikel_v_2";
		}
		$cari = $this->db->query('post')->result();
		foreach ($cari as $key => $cariv) {
			$a=$cariv->id_post;
		}

		$data['post'] = $this->db->query("select * from allpost where id_post = ".$a."")->result();
		$post = $data['post'];
		foreach ($post as $key => $value) {
			$data['title'] = $value->judul;
		}
		$data['vnav'] = "nav/home_v";
		$data['post2'] = $this->db->query("select * from allpost  ORDER BY RAND() limit 5")->result();
		$this->load->view('layout/home_v2', $data);
	}
	public function portal(){
		$data['v1'] = "page/portal";
		$data['vnav'] = "nav/Artikel_v";
		$this->load->view('layout/Artikel_v', $data);
	}
	public function Sekolah($a){
		$data['datanav'] = $this->db->get('navitem')->result();
		$data['id'] = $this->db->get('identitas')->result();
		$da = $data['id'];
		foreach ($da as $key => $daval) {
		}
		if ($daval->lartikel==1) {
		$data['v1'] = "page/artikel_v";
		}elseif ($daval->lartikel==2) {
			$data['v1'] = "page/artikel_v_2";
		}
		$data['post'] = $this->db->query("select * from allpost where id_post = ".$a."")->result();
		$post = $data['post'];
		foreach ($post as $key => $value) {
			$data['title'] = $value->judul;
		}
		$data['vnav'] = "nav/home_v";
		$data['post2'] = $this->db->query("select * from allpost  ORDER BY RAND() limit 5")->result();
		$data['ids']=$this->db->get('identitas')->result();
		$this->load->view('layout/home_v2', $data);
	}

	public function kategori($id){
		$data['title'] = "Homepage";
		$data['datanav'] = $this->db->get('navitem')->result();
		$data['vnav'] = "nav/home_v";
		$data['id'] = $this->db->get('identitas')->result();
		$da = $data['id'];
		$this->load->library('pagination');
		$jumlah_data = $this->cmodel->jumlah_data_kate('allpost', $id);
		$config['total_rows'] = $jumlah_data;
		$config['per_page'] = 9;
		$from = $this->uri->segment(4);
		$config['first_link']       = 'First';
        $config['last_link']        = 'Last';
        $config['next_link']        = 'Next';
        $config['prev_link']        = 'Prev';
        $config['full_tag_open']    = '<div class="pagging text-center"><nav><ul class="pagination justify-content-center">';
        $config['full_tag_close']   = '</ul></nav></div>';
        $config['num_tag_open']     = '<li class="page-item"><span class="page-link">';
        $config['num_tag_close']    = '</span></li>';
        $config['cur_tag_open']     = '<li class="page-item active"><span class="page-link">';
        $config['cur_tag_close']    = '<span class="sr-only">(current)</span></span></li>';
        $config['next_tag_open']    = '<li class="page-item"><span class="page-link">';
        $config['next_tagl_close']  = '<span aria-hidden="true">&raquo;</span></span></li>';
        $config['prev_tag_open']    = '<li class="page-item"><span class="page-link">';
        $config['prev_tagl_close']  = '</span>Next</li>';
        $config['first_tag_open']   = '<li class="page-item"><span class="page-link">';
        $config['first_tagl_close'] = '</span></li>';
        $config['last_tag_open']    = '<li class="page-item"><span class="page-link">';
        $config['last_tagl_close']  = '</span></li>';
        $this->pagination->initialize($config);	
        $data['idd']	 = $id;
		foreach ($da as $key => $daval) {
		}
		$this->db->where('id_kategori', $id);
		$dw = $this->db->get('kategori')->result();
		foreach ($dw as $key => $dww) {
			$data['nkate'] = $dww->nama_kategori;
		}
		$this->db->where('id_kategori', $id);
		$data['post'] = $this->db->get("allpost")->result();
		$data['post'] = $this->cmodel->allpost($config['per_page'],$from,$id);
		if ($daval->lhome==1) {
			$data['v1'] = "page/kategori";
			$this->load->view('layout/home_v', $data);
		}elseif ($daval->lhome==2) {
			$data['v1'] = "page/kategori";
			$this->load->view('layout/home_v_2', $data);
		}

	}

	public function Cari($id){
		$id = urldecode($id);
		$data['title'] = $id;
		$data['datanav'] = $this->db->get('navitem')->result();
		$data['vnav'] = "nav/home_v";
		$data['id'] = $this->db->get('identitas')->result();
		$da = $data['id'];
		foreach ($da as $key => $daval) {
		}
		$this->db->like('judul', $id);
		$data['post'] = $this->db->get("allpost")->result();
		if ($daval->lhome==1) {
			$data['v1'] = "page/cari";
			$this->load->view('layout/home_v', $data);
		}elseif ($daval->lhome==2) {
			$data['v1'] = "page/cari";
			$this->load->view('layout/home_v_2', $data);
		}

	}

	public function galery(){
		$data['title'] = "Homepage";
		$data['datanav'] = $this->db->get('navitem')->result();
		$data['vnav'] = "nav/home_v";
		$data['id'] = $this->db->get('identitas')->result();
		$da = $data['id'];
		$this->load->library('pagination');
		$jumlah_data = $this->cmodel->jumlah_data('img');
		$config['total_rows'] = $jumlah_data;
		$config['per_page'] = 9;
		$from = $this->uri->segment(3);
		$config['first_link']       = 'First';
        $config['last_link']        = 'Last';
        $config['next_link']        = 'Next';
        $config['prev_link']        = 'Prev';
        $config['full_tag_open']    = '<div class="pagging text-center"><nav><ul class="pagination justify-content-center">';
        $config['full_tag_close']   = '</ul></nav></div>';
        $config['num_tag_open']     = '<li class="page-item"><span class="page-link">';
        $config['num_tag_close']    = '</span></li>';
        $config['cur_tag_open']     = '<li class="page-item active"><span class="page-link">';
        $config['cur_tag_close']    = '<span class="sr-only">(current)</span></span></li>';
        $config['next_tag_open']    = '<li class="page-item"><span class="page-link">';
        $config['next_tagl_close']  = '<span aria-hidden="true">&raquo;</span></span></li>';
        $config['prev_tag_open']    = '<li class="page-item"><span class="page-link">';
        $config['prev_tagl_close']  = '</span>Next</li>';
        $config['first_tag_open']   = '<li class="page-item"><span class="page-link">';
        $config['first_tagl_close'] = '</span></li>';
        $config['last_tag_open']    = '<li class="page-item"><span class="page-link">';
        $config['last_tagl_close']  = '</span></li>';
        $this->pagination->initialize($config);	
		foreach ($da as $key => $daval) {
		}
		$data['post'] = $this->db->query("SELECT * FROM IMG ORDER BY  id_img desc")->result();
		$data['post'] = $this->cmodel->img($config['per_page'],$from);
		if ($daval->lhome==1) {
			$data['v1'] = "page/galery";
			$this->load->view('layout/home_v', $data);
		}elseif ($daval->lhome==2) {
			$data['v1'] = "page/galery";
			$this->load->view('layout/home_v_2', $data);
		}

	}

	public function SemuaArtikel(){
		$data['post'] = $this->db->get('allpost')->result();
		$data['title'] = "Semua Artikel";
		$data['datanav'] = $this->db->get('navitem')->result();
		$data['vnav'] = "nav/home_v";
		$data['id'] = $this->db->get('identitas')->result();
		$da = $data['id'];
		foreach ($da as $key => $daval) {
		}
		if ($daval->lhome==1) {
			$data['v1'] = "page/allpost";
			$this->load->view('layout/home_v', $data);
		}elseif ($daval->lhome==2) {
			$data['v1'] = "page/allpost";
			$this->load->view('layout/home_v_2', $data);
		}
	}

	public function about(){
		$data['guru'] = $this->db->get('ket_guru')->result();
		$data['title'] = "Informasi Sekolah";
		$data['datanav'] = $this->db->get('navitem')->result();
		$data['vnav'] = "nav/home_v";
		$data['id'] = $this->db->get('identitas')->result();
		$da = $data['id'];
		foreach ($da as $key => $daval) {
		}
		$data['nama'] = $daval->nama_sekolah;
		if ($daval->lhome==1) {
			$data['v1'] = "page/about";
			$this->load->view('layout/home_v', $data);
		}elseif ($daval->lhome==2) {
			$data['v1'] = "page/about";
			$this->load->view('layout/home_v_2', $data);
		}	
	}

	public function DirGuru(){
		$data['title'] = "Dir Guru";
		$data['mapel'] = $this->db->get('mapel')->result();
		$data['datanav'] = $this->db->get('navitem')->result();
		$data['vnav'] = "nav/home_v";
		$data['id'] = $this->db->get('identitas')->result();
		$da = $data['id'];
		foreach ($da as $key => $daval) {
		}
		if ($daval->lhome==1) {
			$data['v1'] = "page/dirguru";
			$this->load->view('layout/home_v', $data);
		}elseif ($daval->lhome==2) {
			$data['v1'] = "page/dirguru";
			$this->load->view('layout/home_v_2', $data);
		}	
	}
	public function cariGuru($id){
		$id = urldecode($id);
		$this->db->where('id_mapel', $id);
		$data['guru'] = $this->db->get('ket_guru')->result();
		$this->load->view('page/ajax/dirguru', $data);
	}

	public function cariGuruNamaMapel(){
		$post = $this->input->post();
		$this->db->where('id_mapel', $post['a']);
		$this->db->like('nama_guru', $post['b']);
		$data['guru'] = $this->db->get('ket_guru')->result();
		$this->load->view('page/ajax/dirguru', $data);
	}

	public function luluscarinotahun(){
		$post = $this->input->post();
		$this->db->where('thn_ajaran', $post['a']);
		$this->db->like('nomor_verifikasi', $post['b']);
		$data['siswa'] = $this->db->get('join_sisver')->result();
		$this->load->view('page/ajax/luluscari', $data);
	}

	public function cariGuruNama($id){
		$id = urldecode($id);
		$this->db->like('nama_guru', $id);
		$data['guru'] = $this->db->get('ket_guru')->result();
		$this->load->view('page/ajax/dirguru', $data);
	}
	public function modalpage($id){
		$this->db->where('nip',$id);
		$data['guru2'] = $this->db->get('ket_guru')->result();
		$this->load->view('page/ajax/modalpage', $data);	
	}

	public function luluscarino($id){
		$id = urldecode($id);
		$this->db->like('nomor_verifikasi', $id);
		$data['siswa'] = $this->db->get('join_sisver')->result();
		$this->load->view('page/ajax/luluscari', $data);
	}
	public function lulusCari($id){
		$id = urldecode($id);
		$this->db->where('thn_ajaran', $id);
		$data['siswa'] = $this->db->get('siswa')->result();
		$this->load->view('page/ajax/luluscari', $data);
	}

	public function lulus(){

		$data['title'] = "Daftar Lulus Peserta Didik Baru";
		$data['mapel'] = $this->db->query('select distinct thn_ajaran from siswa')->result();
		$data['datanav'] = $this->db->get('navitem')->result();
		$data['vnav'] = "nav/home_v";
		$data['id'] = $this->db->get('identitas')->result();
		$da = $data['id'];
		foreach ($da as $key => $daval) {
		}
		if ($daval->lhome==1) {
			$data['v1'] = "page/lulus";
			$this->load->view('layout/home_v', $data);
		}elseif ($daval->lhome==2) {
			$data['v1'] = "page/lulus";
			$this->load->view('layout/home_v_2', $data);
		}	
	}

}
