<?php namespace App\Models;

use CodeIgniter\Model;
use CodeIgniter\Database\ConnectionInterface;

class UserModel extends Model{
  protected $table = 'users';
  protected $allowedFields = ['email', 'password'];

  protected $db;
	public function __construct(ConnectionInterface &$db) {
		$this->db =& $db;
    $this->thisDb = $this->db->table('users');
	}

  public function login_user_verif($email, $password){
    $builder = $this->thisDb
              ->select('id, name, email')
              ->where('email', $email)
              ->where('password', $password);
    $query = $builder->get();
    
    $user_row = $query->getFirstRow();
    return $user_row;
  }

}