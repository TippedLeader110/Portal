<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/Home
	 *	- or -
	 * 		http://example.com/index.php/Home/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/Home/<method_name>
	 * @see https://codeigniter.com/user_guide/general/urls.html
	 */
	public function index()
	{
		$data['v1'] = "page/home_v";
		$data['vnav'] = "nav/home_v";
		$this->load->view('layout/home_v', $data);
	}
	public function portal(){
		$data['v1'] = "page/portal";
		$data['vnav'] = "nav/home_v";
		$this->load->view('layout/home_v', $data);
	}
}
