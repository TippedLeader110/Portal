<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Custom extends CI_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/Custom
	 *	- or -
	 * 		http://example.com/index.php/Custom/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/Custom/<method_name>
	 * @see https://codeigniter.com/user_guide/general/urls.html
	 */
	function __construct(){
		parent::__construct();
	
		// if($this->session->userdata('status') != "login"){
		// 	redirect(base_url("login"));
		// }
	}
	public function index()
	{
		$data['cmain'] = "page/cmain";
		$data['home'] = 0;	 //Navbar ada apa ga
		$data['ac'] = 1;     //Posisi aktif nav bar
		$data['navact'] = 0; //Posisi sidenav aktif
		$data['nav'] = 'nav/custkiri';
		$this->load->view('cust/main_fluid', $data);
	}

	public function getCmain(){
		$id = $this->input->post('id');
		if ($id=='report') {
			// $data['ret'] = $this->cmodel->getAllcount();
			$this->load->view('page/ajax/mainReport');
		}
		elseif ($id=='user') {
			# code...
		}
		elseif ($id=='pintas') {
			# code...
		}
	}

	public function KWeb(){
		$data['home'] = 2;	
		$data['cmain'] = "page/ckweb";
		$data['ac'] = 3;
		$data['nav'] = 'nav/custkiri2';
		$data['navact'] = 0;
		$this->load->view('cust/main_fluid', $data);
	}
	public function KUser(){
		$data['home'] = 1;	
		$data['cmain'] = "page/cmain";
		$data['ac'] = 4;
		$data['navact'] = 0;
		$this->load->view('cust/main', $data);
	}
	// --------------------EWeb----------------------

	public function EWeb(){
		$data['home'] = 1;	
		$data['cmain'] = "page/ceweb";
		$data['ac'] = 2;
		$data['nav'] = 'nav/custkiri';
		$data['navact'] = 0;
		$data['sek'] = $this->cmodel->getIdentitas();
		$this->load->view('cust/main_fluid', $data);
	}

	##################################################

	public function identitas(){
		$data['home'] = 1;	
		$data['cmain'] = "page/cidsekolah";
		$data['ac'] = 2;
		$data['nav'] = 'nav/custkiri';
		$data['navact'] = 1;
		$data['sek'] = $this->cmodel->getIdentitas();
		$this->load->view('cust/main', $data);
	}

	public function getSek(){
			$response = $this->db->get('identitas');
			$response = $response->result();
			echo json_encode($response);
	}

	public function upVisi(){
		$data = $this->input->post('data');
		$go = $this->cmodel->pVisi($data);
	}


	public function upSejarah(){
		$data = $this->input->post('data');
		$go = $this->cmodel->pSejarah($data);
	}

	public function upNama(){
		$data = $this->input->post('kode');
		$go = $this->cmodel->pNama($data);
	}


	public function upMisi(){
		$data = $this->input->post('data');
		$go = $this->cmodel->pMisi($data);
	}
	############################################

	public function navbar(){
		$data['home'] = 1;	
		$data['cmain'] = "page/cnavbar";
		$data['ac'] = 2;
		$data['nav'] = 'nav/custkiri';
		$data['navact'] = 2;
		$data['navbar'] = $this->cmodel->getNavbar();
		$this->load->view('cust/main', $data);
	}

	public function upidNav(){
		$id = $this->input->post('kode');
		$label = $this->input->post('label');
		$this->db->query("UPDATE navitem set label = '".$label."' where id_item = '".$id."'");
	}

	public function navId(){
		$id = $this->input->post('ab');
		$this->db->where('id_item', $id);
		$r = $this->db->get('navitem');
		$data['res'] = $r->result();
		$this->load->view('page/ajax/editnavshow', $data);	

	}

	public function navDropId(){
		$id = $this->input->post('ab');
		$data['navbar'] = $this->cmodel->getnavDrop($id);
		$this->load->view('page/ajax/navbar', $data);	

	}

	public function navEdit(){
		$r = $this->db->get('navitem');
		$data['nav'] = $r->result();
		$this->load->view('page/ajax/navedit', $data);	
	}

	public function getNav(){
		$ab = $this->input->post('ab');
		$data = $this->cmodel->getnavDrop($ab);
		echo json_encode($data);
	}

	public function enavbar(){
		$ab = $this->input->post('ab');
		$data['navbar'] = $this->cmodel->getnavDrop($ab);
		$this->load->view('page/ajax/navbar', $data);	
	}

	public function enavbarfirst(){
		$ab = $this->input->post('ab');
		$this->db->order_by("id_item", "asc");
		$res = $this->db->get('navitem');
		$res = $res->result();
		$data['navbar'] = $res;
		$this->load->view('page/ajax/navbar2', $data);	
	}

	public function upNav(){
		$a = json_decode($_POST['a'], true);
		$b = json_decode($_POST['b'], true);
		// $a = array(0 => 0, 1 => 1);
		// $b = array(0 => 0, 1 => 1);

		for ($i=0; $i < sizeof($a); $i++) { 
			$this->db->set('id_sort', $i+1);
			$this->db->where('id_item', $b[$i]);
			$this->db->update('navitem');
		}

		$this->db->query(" update navitem set id_item = id_sort");

	}

	public function addNav(){
		$a = $this->db->query('select max(id_item) as id_item from navitem')->result();
		foreach ($a as $key => $value) {
		}
		$anilai = $value->id_item;
		$anilai = $anilai+1;
		$data = array('id_item' => $anilai , 'id_sort' => $anilai, 'label' => 'Unamed');
		$this->db->insert('navitem', $data);
	}

	public function delNav(){
		$id = $this->input->post('id');
		$this->db->where('id_item', $id);
		$this->db->delete('navitem');
	}

	############################################

	public function warna(){
		$data['home'] = 1;	
		$data['cmain'] = "page/cwarna";
		$data['ac'] = 2;
		$data['nav'] = 'nav/custkiri';
		$data['navact'] = 4;
		$this->load->view('cust/main', $data);
	}

	public function ewarna(){
		$data['warna'] = $this->cmodel->getWarna();
		$this->load->view('page/ajax/warna', $data);	
	}

	public function saveWarna(){
		$a = $this->input->post('kode');
		$b = $this->input->post('label');
		$this->cmodel->setWarna($a,$b);
	}
	public function remWarna(){
		$a = $this->input->post('id');
		$this->cmodel->delWarna($a);
	}

	// --------------------KWeb----------------------

	public function galery(){
		$data['home'] = 1;	
		$data['cmain'] = "page/cgalery";
		$data['ac'] = 3;
		$data['nav'] = 'nav/custkiri2';
		$data['navact'] = 1;
	}
	#################################################

	public function artikel(){
		$data['home'] = 1;	
		$data['cmain'] = "page/cpost";
		$data['ac'] = 3;
		$data['nav'] = 'nav/custkiri2';
		$data['navact'] = 2;	
		$this->load->view('cust/main', $data);
	}

	public function postCreate(){
		$ali = $this->db->get('kategori');
		$data['m'] = $ali->result();
		$this->load->view('page/ajax/createpost', $data);
	}
	public function postShow(){
		$r = $this->db->get('post');
		$data['quer'] = $r->result();
		$this->load->view('page/ajax/showpost', $data);
	}
	public function savePost(){
		$title = $this->input->post('t');
		$stat = $this->input->post('stat');
		$waktu = $this->input->post('waktu');
		$Kategori = $this->input->post('kat');
		$isi = $this->input->post('is');
		$this->cmodel->savePostnow($title,$waktu,$Kategori,$isi,$stat);
	}
	public function postKate(){
		$r = $this->db->get('kategori');
		$data['quer'] = $r->result();
		$this->load->view('page/ajax/showKate', $data);
	}
	public function delKate(){
		$id = $this->input->post('id');
		$this->db->where('id_kategori', $id);
		$this->db->delete('kategori');
	}
	public function kateTambah(){
		$a = $this->input->post('kode');
		$data = array('nama_kategori' => $a);
		$this->db->insert('kategori', $data);
	}
}
