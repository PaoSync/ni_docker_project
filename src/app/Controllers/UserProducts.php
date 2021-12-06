<?php namespace App\Controllers;
use App\Controllers\BaseController;
use CodeIgniter\HTTP\Response;
use App\Models\ProductModel;
use App\Models\UserModel;

class UserProducts extends BaseController
{
	public function __construct() { 
		$db = db_connect();
		$this->userModel = new UserModel($db);
		$this->productModel = new ProductModel($db);
		$this->session = \Config\Services::session();
		$this->response = service('response');
    } 

	public function index(){}

	/*
	 * Verifies if user-password combination is valid
	 */
	public function auth(){
		if ($this->request->getMethod() == 'post') {
			$email = isset($_POST['email']) ? $_POST['email'] : null;
			$password = isset($_POST['password']) ? $_POST['password'] : null;
			if ($email != null and $password != null ){
				$user_data = $this->userModel->login_user_verif($email, $password);
				if ($user_data != null) {
					$user['id'] 	= $user_data->id;
					$user['name'] 	= $user_data->name;
					$user['email'] 	= $user_data->email;
					$this->setUserSession($user);
					$this->user();
				} else {
					$this->session->stop();
					$this->session->set(['login_error_message' => "Incorrect email/password"]);
					$this->session->markAsFlashdata('login_error_message');
					return redirect()->to('/login');
				}
				
			} else {
				$this->session->set(['login_error_message' => "Empty email/password"]);
				$this->session->markAsFlashdata('login_error_message');
				return redirect()->to('/login');
			}
		}
	}

	/*
	 * Loads current user's purchased products view
	 */
	public function user_products(){
		$userId = $this->session->get('id');
		$data['all_products'] = $this->productModel->getUserProducts($userId);
		$ownedSKUs = array_column($data['all_products'], 'sku') ?: [];
		$data['new_products'] = $this->productModel->getNewProducts($ownedSKUs);
		echo view('templates/header');
		echo view('products', $data);
		echo view('templates/footer');
	}

	/*
	 * Adds a "not owned"/new product to the user
	 */
	public function add_product(){
		$productSku = isset($_POST['product_sku']) ? $_POST['product_sku'] : null;
		$userId = $this->session->get('id');
		$added = $this->productModel->addNewProduct($productSku, $userId);
		if($added){
			return redirect()->to('/user/products');
		}
	}

	/*
	 * Deletes a an existing product from the user
	 */
	public function delete_product(string $sku){
		$userId = $this->session->get('id');
		$deleted = $this->productModel->deleteUserProduct($sku, $userId);
		if($deleted){
			return redirect()->to('/user/products');
		}
	}

	/*
	 * Sets user session information
	 */
	public function setUserSession($user){
		$user_data = [
			'id' => $user['id'],
			'email' => $user['email'],
			'user_name' => $user['name'],
			'logged_in' => true,
		];
		$this->session->set($user_data);
		return true;
	}

	/*
	 * Loads current user information
	 * This has a verification I would recommend to add to all the views, that way is more secure and there is no shortcuts to access page with saved urls information
	 */
	public function user($data = []){
		if ( isset($_SESSION['logged_in']) && $_SESSION['logged_in'] ){
			echo view('templates/header');
			echo view('user');
			echo view('templates/footer');
		} else {			
			$this->error_description(401, 'You don\'t have access to this view (403: Unauthorized)');
		}
		
	}

	/*
	 * Loads Error Page
	 * This can future become something more fancy and nice, like with a background or animation and mor information
	 */
	public function error_description($code, $msg){
		$this->session->stop();
		$this->response->setStatusCode($code, $msg);
		$this->response->send();
		$data['status_code'] = $this->response->getStatusCode();
		$data['error_message'] = $this->response->getReasonPhrase();
		echo view('templates/header');
		echo view('error_description', $data);
		echo view('templates/footer');	
	}

}