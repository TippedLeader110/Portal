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
	
		if($this->session->userdata('status') != "login"){
			redirect(base_url("login"));
		}
	}
	public function index()
	{
		$data['title'] = "Custom Admin";
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
			$bay = $this->db->query('select * from allcount');
			$k['blabla'] = $bay->result();
			$this->load->view('page/ajax/mainReport', $k);
			// $data['ret'] = $this->cmodel->getAllcount();
		}
		elseif ($id=='log') {
			# code...
		}
		elseif ($id=='pintas') {
			# code...
		}
	}
	public function count(){
		$bay = $this->db->query('select * from allcount2');
		$k['blabla'] = $bay->result();
		$this->load->view('page/ajax/mainReport', $k);
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
		$link = $this->input->post('link');
		$this->db->query("UPDATE navitem set label = '".$label."' , link = '".$link."' where id_item = '".$id."'");
	}

	public function navId(){
		$id = $this->input->post('ab');
		$this->db->where('id_item', $id);
		$r = $this->db->get('navitem');
		$data['res'] = $r->result();
		$data['kate'] = $this->db->get('kategori')->result();
		$data['post'] = $this->db->get('allpost')->result();
		$this->load->view('page/ajax/editnavshow', $data);	

	}

	public function naveditkate($id){
		$data['post'] = $this->db->query("call allpost(".$id.")")->result();
		$this->load->view('page/ajax/tableLink', $data);	
	}

	public function naveditkate2($id, $like){
		$data['post'] = $this->db->query("call postname(".$id.", '".$like."')")->result();
		$this->load->view('page/ajax/tableLink', $data);	
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
		$this->load->view('cust/main', $data);
	}
	public function delImg(){
		$a = $this->input->post('a');
		$this->db->where('id_img' , $a);
		$this->db->delete('img');
	}
	public function egalery(){
		
		$jumlah_data = $this->cmodel->jumlah_data('img');
		$this->load->library('pagination');
		// $config['base_url'] = base_url('Custom/egalery');
		$config['total_rows'] = $jumlah_data;
		$config['per_page'] = 10;
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
		$data['galery'] = $this->cmodel->data($config['per_page'],$from);
		$this->load->view('page/ajax/galery', $data);	
	}

	public function saveGambar(){
		$a = $this->input->post();
		$this->cmodel->setGambar($a);
	}
	public function do_upload(){
        $config['upload_path']="./source/gambar/galery"; //path folder file upload
        $config['allowed_types']='gif|jpg|png'; //type file yang boleh di upload
        $config['encrypt_name'] = TRUE; //enkripsi file name upload
         
        $this->load->library('upload',$config); //call library upload 
        if($this->upload->do_upload("file")){ //upload file
            $data = array('upload_data' => $this->upload->data()); //ambil file name yang diupload
 
            $judul= $this->input->post('deskripsi'); //get judul image
            $tipe= $this->input->post('tipe');
            $image= $data['upload_data']['file_name']; //set file name ke variable image
             
            $result= $this->cmodel->simpan_upload($judul,$image,$tipe); //kirim value ke model m_upload
            echo json_decode($result);
            echo "1";
        }
        else{
        	echo "0";
        }
	}

	public function do_upload_cover($ii){
        $config['upload_path']="./source/gambar/post"; //path folder file upload
        $config['allowed_types']='gif|jpg|png'; //type file yang boleh di upload
        $config['encrypt_name'] = TRUE; //enkripsi file name upload
         
        $this->load->library('upload',$config); //call library upload 
        if($this->upload->do_upload("file")){ //upload file
            $data = array('upload_data' => $this->upload->data()); //ambil file name yang diupload
 
            $image= $data['upload_data']['file_name']; //set file name ke variable image
             
            $result= $this->cmodel->simpan_cover($image,$ii); //kirim value ke model m_upload
            echo json_decode($result);
            return 1;
        }
        else{
        	return 0;
        }
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

	public function delPost(){
		$id = $this->input->post('id');
		$this->db->where('id_post',$id);
		$this->db->delete('post');
	}
	public function postCreate(){
		$ali = $this->db->get('kategori');
		$data['m'] = $ali->result();
		$this->load->view('page/ajax/createpost', $data);
	}
	public function postUpdate($a){
		$ali = $this->db->get('kategori');
		$data['m'] = $ali->result();
		$this->db->where('id_post', $a);
		$data['post'] = $this->db->get('post')->result();
		$this->load->view('page/ajax/updatePost', $data);
	}

	public function postShow(){
		$r = $this->db->get('allpost');
		$data['quer'] = $r->result();
		$this->load->library('pagination');
		$jumlah_data = $this->cmodel->jumlah_data('allpost');
		// $config['base_url'] = base_url('Custom/egalery');
		$config['total_rows'] = $jumlah_data;
		$config['per_page'] = 10;
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
		$data['quer'] = $this->cmodel->allpost($config['per_page'],$from);
		$this->load->view('page/ajax/showpost', $data);
	}
	public function postShow2(){
		$this->load->library('pagination');
		$jumlah_data = $this->cmodel->jumlah_data('allpost');
		// $config['base_url'] = base_url('Custom/egalery');
		$config['total_rows'] = $jumlah_data;
		$config['per_page'] = 10;
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
		$data['quer'] = $this->cmodel->allpost($config['per_page'],$from);
		$this->load->view('page/ajax/showpost', $data);
	}
	public function savePost(){
		$title = $this->input->post('title');
		$stat = $this->input->post('tipe');
		$waktu = $this->input->post('waktu');
		$Kategori = $this->input->post('select');
		$isi = $this->input->post('isi');

		$config['upload_path']="./source/gambar/post"; //path folder file upload
        $config['allowed_types']='gif|jpg|png'; //type file yang boleh di upload
        $config['encrypt_name'] = TRUE; //enkripsi file name upload
         
        $this->load->library('upload',$config); //call library upload 
        if($this->upload->do_upload("file")){ //upload file
            $data = array('upload_data' => $this->upload->data()); //ambil file name yang diupload
 
            $cover= $data['upload_data']['file_name']; //set file name ke variable image
             
            $result= $this->cmodel->savePostnow($title,$waktu,$Kategori,$isi,$stat,$cover); //kirim value ke model m_upload
            echo "1";
        }
        else{
        	echo "0";
        }


		
		$query = $this->db->query("select * from post where isi =  '".$isi."' and judul = '".$title."' ")->result();
		foreach ($query as $key => $value) {
		echo $value->id_post;
		}
	}
	public function updatePost(){
		$title = $this->input->post('title');
		$stat = $this->input->post('tipe');
		$waktu = $this->input->post('waktu');
		$Kategori = $this->input->post('kategori');
		$isi = $this->input->post('isi');

		$config['upload_path']="./source/gambar/post"; //path folder file upload
        $config['allowed_types']='gif|jpg|png'; //type file yang boleh di upload
        $config['encrypt_name'] = TRUE; //enkripsi file name upload
         
        $this->load->library('upload',$config); //call library upload 
        if($this->upload->do_upload("file")){ //upload file
            $data = array('upload_data' => $this->upload->data()); //ambil file name yang diupload
 
            $cover= $data['upload_data']['file_name']; //set file name ke variable image
             $id = $this->input->post('id');
            $result= $this->cmodel->updatePostnow($title,$waktu,$Kategori,$isi,$stat,$cover,$id); //kirim value ke model m_upload
            $oldfile = $this->input->post('old');
            $path = base_url('source/gambar/post');
            $path = "".$path."/".$oldfile."";
		    $files = glob($path); // get all file names
		    foreach($files as $file){ // iterate files
		      if(is_file($file))
		        unlink($file); // delete file
		        //echo $file.'file deleted';
		    }  
         echo "1";
        }
        else{
        	echo "0";
        }


		
		$query = $this->db->query("select * from post where isi =  '".$isi."' and judul = '".$title."' ")->result();
		foreach ($query as $key => $value) {
		echo $value->id_post;
		}
	}
		public function getKate(){
			$response = $this->db->get('kategori');
			$response = $response->result();
			echo json_encode($response);
	}
	public function postKate(){
		$r = $this->db->get('kategori');
		$data['quer'] = $r->result();
		$this->load->library('pagination');
		$jumlah_data = $this->cmodel->jumlah_data('kategori');
		$config['total_rows'] = $jumlah_data;
		$config['per_page'] = 3;
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
        $data['quer'] = $this->cmodel->kate($config['per_page'],$from);
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
	###############################################

	public function siswa(){
		$data['home'] = 1;	
		$data['cmain'] = "page/csiswa";
		$data['ac'] = 3;
		$data['nav'] = 'nav/custkiri2';
		$data['navact'] = 3;	
		$data['siswa'] = $this->db->get('siswa')->result();
		$data['set'] = $this->db->get('identitas')->result();
		$this->load->view('cust/main', $data);
	}

	public function siswaupdateSetting(){
		$a = $this->input->post('thn');
		$b = $this->input->post('jumlah');
		$this->db->set('tahun_penerimaan', $a);
		$this->db->set('maks', $b);
		$this->db->update('identitas');
	}

	public function sisSetting(){
		$data['set'] = $this->db->get('identitas')->result();
		$this->load->view('page/ajax/akreak', $data);
	}

	public function akreak(){
		$val = $this->input->post('awl');
		$this->db->set('penerimaan', $val);
		$this->db->update('identitas');
	}

	public function siswaBaru(){
		$data['siswa'] = $this->db->get('siswa')->result();
		$this->load->view('page/ajax/siswaBaru', $data);
	}

	public function siswaFull(){
		$data['siswa'] = $this->db->get('siswa')->result();
		$this->load->view('page/ajax/siswa', $data);
	}

	###############################################
	public function guru(){
		$data['home'] = 1;	
		$data['cmain'] = "page/cguru";
		$data['ac'] = 3;
		$data['nav'] = 'nav/custkiri2';
		$data['navact'] = 2;	
		$this->load->view('cust/main', $data);
	}
	public function guruCreate(){
		$ali = $this->db->get('jabatan_guru');
		$data['m'] = $ali->result();
		$this->load->view('page/ajax/showGuru', $data);
	}
	public function guruShow(){
		$r = $this->db->query('select * from ket_guru');
		$data['quer'] = $r->result();
		$this->load->view('page/ajax/showguru', $data);
	}
	public function gurumapel(){
		$ali = $this->db->get('mapel');
		$data['k'] = $ali->result();
		$this->load->view('page/ajax/showGuru', $data);
	}

	public function saveGuru(){
		$nama = $this->input->post('n');
		$jabatan = $this->input->post('jabatan');
		$alamat = $this->input->post('alamat');
		$mapel = $this->input->post('mapel');
		$this->cmodel->savePostnow($title,$waktu,$Kategori,$isi,$stat);
	}
	public function delGuru(){
		$id = $this->input->post('id');
		$this->db->where('id_guru',$id);
		$this->db->delete('guru');
	}
	public function sJabatan(){
		$r = $this->db->get('jabatan_guru');
		$data['quer'] = $r->result();
		$jumlah_data = $this->cmodel->jumlah_data('jabatan_guru');
		$this->load->library('pagination');
		// $config['base_url'] = base_url('Custom/egalery');
		$config['total_rows'] = $jumlah_data;
		$config['per_page'] = 5;
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
		$data['quer'] = $this->cmodel->jabat_guru($config['per_page'],$from);
		$this->load->view('page/ajax/showJabatan', $data);	
	}
	public function delJabat(){
		$id = $this->input->post('id');
		$this->db->where('id_jabatan', $id);
		$this->db->delete('jabatan_guru');
	}
	public function JabatTambah(){
		$a = $this->input->post('kode');
		$data = array('jabatan' => $a);
		$this->db->insert('jabatan_guru', $data);
	}
	public function smapel(){
		$r = $this->db->get('mapel');
		$data['quer'] = $r->result();
		$jumlah_data = $this->cmodel->jumlah_data('mapel');
		$this->load->library('pagination');
		// $config['base_url'] = base_url('Custom/egalery');
		$config['total_rows'] = $jumlah_data;
		$config['per_page'] = 5;
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
		$data['quer'] = $this->cmodel->mapel($config['per_page'],$from);
		$this->load->view('page/ajax/smapel', $data);
	}
	public function delmapel(){
		$id = $this->input->post('id');
		$this->db->where('id_mapel', $id);
		$this->db->delete('mapel');
	}
	public function mapelTambah(){
		$a = $this->input->post('kode');
		$data = array('mapel' => $a);
		$this->db->insert('mapel', $data);
	}


	// Layout Tata Letak

	public function layKonten(){
		if ($this->input->post('art')) {
		$art = $this->input->post('art');
		$this->db->set('lartikel', $art);
		}

		if ($this->input->post('awl')) {
		$awl=$this->input->post('awl');
		$this->db->set('lhome', $awl);
		}
		$this->db->update('identitas');
	}

	public function layout(){
		$data['home'] = 1;	
		$data['cmain'] = "page/clayout";
		$data['ac'] = 2;
		$data['nav'] = 'nav/custkiri';
		$data['navact'] = 3;
		$q = $this->db->get('identitas')->result();
		foreach ($q as $key => $value) {
		}
		$data['awal'] = $value->lhome;
		$data['art'] =  $value->lartikel;
		$this->load->view('cust/main', $data);
	}

	public function layoutView(){
		$data['konten'] = $this->db->get('nofitur')->result();
		$this->load->view('page/ajax/layout', $data);	
	}

	public function layoutView2(){
		$data['konten'] = $this->db->query('SELECT a.id_fitur, b.label, b.link from main a inner join fitur b on a.id_fitur = b.id_fitur ')->result();
		$this->load->view('page/ajax/layout2', $data);	
	}

	public function pindahLayout(){
		$val = $this->input->post('a');
		$tipe = $this->input->post('b');
		echo $val;
		echo $tipe;
		if ($tipe=='tambah') {
			$data = array('id_fitur' => $val);
			$this->db->insert('main', $data);
		}
		elseif ($tipe='hapus') {
			$this->db->where('id_fitur', $val);
			$this->db->delete('main');
		}
	}



}
