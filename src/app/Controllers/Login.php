<?php namespace App\Controllers;

use App\Controllers\BaseController;
use CodeIgniter\HTTP\Response;
use App\Models\ProductModel;

class Login extends BaseController
{
	public function __construct() { 
		$db = db_connect();
		$this->productModel = new ProductModel($db);
		$this->session = \Config\Services::session();
		$this->response = service('response');
    } 

	public function index()
	{
		$this->login();
	}

	/**
	 * Loads the login page
	 */
	public function login(){
		echo view('templates/header');
		echo view('login');
		echo view('templates/footer');
	}
	/**
	 * Loads all the existing products
	 * Doesn't require authentication
	 */
	public function products(){
		$data['all_products'] = $this->productModel->getAvailableProducts();
		echo view('templates/header');
		echo view('products', $data);
		echo view('templates/footer');
	}
	/**
	 * Logout method that ends session and reloads login page
	 */
	public function logout(){
		$this->session->set(['logged_in' => false]);
		$this->session->destroy();
		return redirect()->to('/login');
	}

}