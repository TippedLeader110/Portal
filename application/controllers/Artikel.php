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

	public function SemuaArtikel(){
		$data['d'] = $this->db->get('allpost')->result();
		$data['title'] = "Homepage";
		
		$data['datanav'] = $this->db->get('navitem')->result();
		$data['post'] = $this->db->get('post')->result();
		$data['img'] = $this->db->get('img')->result();
		$data['vnav'] = "nav/home_v";
		$data['rand'] = $this->db->query('SELECT link FROM img ORDER BY RAND() LIMIT 1')->result();
		$data['id'] = $this->db->get('identitas')->result();
		$da = $data['id'];
		foreach ($da as $key => $daval) {
		}
		if ($daval->lhome==1) {
			$data['v1'] = "page/home_v";
			$this->load->view('layout/home_v', $data);
		}elseif ($daval->lhome==2) {
			$data['v1'] = "page/home_v_2";
			$this->load->view('layout/home_v_2', $data);
		}
	}
}
