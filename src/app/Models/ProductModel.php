<?php namespace App\Models;

use CodeIgniter\Model;
use CodeIgniter\Database\ConnectionInterface;

class ProductModel extends Model{
  protected $db;
	public function __construct(ConnectionInterface &$db) {
		$this->db =& $db;
    $this->thisDb = $this->db->table('products');
    $this->PurchasedDb = $this->db->table('purchased');
	}

  public function getAvailableProducts(){
    $builder = $this->thisDb->select('sku, name');
    $query = $builder->get();
    
    $products = $query->getResultArray();
    return $products;
  }

  public function getUserProducts( int $userId ){
    $builder = $this->thisDb->select('products.sku sku, products.name name')
              ->join('purchased AS pr', 'pr.product_sku = products.sku')
              ->where('pr.user_id', $userId);

    $query = $builder->get();
    
    $products = $query->getResultArray();
    return $products;
  }

  public function getNewProducts( $skuList ){
    $builder = $this->thisDb->select('sku, name')
              ->whereNotIn('sku', $skuList);
    $query = $builder->get();
    
    $products = $query->getResultArray();
    return $products;
  }

  public function addNewProduct( string $productSku, int $userId ){
    $builder = $this->PurchasedDb
              ->set('user_id', $userId)
              ->set('product_sku', $productSku);
    return $builder->insert();
  }

  public function deleteUserProduct( string $productSku, int $userId ){
    $builder = $this->PurchasedDb
              ->where('user_id', $userId)
              ->where('product_sku', $productSku);
    return $builder->delete();
  }

}