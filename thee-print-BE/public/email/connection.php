<?php
class DBObject{
	private $host = 'localhost'; //host
	private $username = 'theeprin_staging'; //database username
	private $password = 'sT@g1nG2020'; //database user password
	private $database = 'theeprin_production'; //database name
	private $connection = null; // connection object
	// private $host = 'localhost'; //host
	// private $username = 'theeprin_staging'; //database username
	// private $password = 'sT@g1nG2020'; //database user password
	// private $database = 'theeprin_beta'; //database name
	// private $connection = null; // connection object
	// private $host = 'localhost'; //host
	// private $username = 'root'; //database username
	// private $password = ''; //database user password
	// private $database = 'eelj_database'; //database name
	// private $connection = null; // connection object

	public function __construct(){
		$this->_connect();
	}
	private function _connect(){
		$this->connection = mysqli_connect($this->host, $this->username, $this->password, $this->database);
	}
	private function _execute_query($sql = ''){
		$query = mysqli_query($this->connection, $sql);
		return $query;
	}
	public function execute($sql){
		$query = mysqli_query($this->connection, $sql);
		return $query;
		return $query;
		echo "<pre>";
		print_r($query);
	}
	public function count_total_jobs(){
		$sql="SELECT * FROM orders WHERE date_added between DATE_ADD(NOW(), INTERVAL -30 DAY) and DATE_ADD(NOW(), INTERVAL 1 DAY)";
		$query = $this->_execute_query($sql);
		return $query;
	}

	public function select($qualifier = array()){
		$sql = " SELECT ";
		if(isset($qualifier['fields']) && count($qualifier['fields']) > 0){
			$sql .= "(";
			$fields = $qualifier['fields'];
			foreach($fields as $key => $field)
			{
				$sql .= ($key > 0) ? "," : "";
				$sql .= $field;
			}
			$sql .= ")";
		}
		else if(isset($qualifier['count']) && count($qualifier['count']) > 0){
			$sql .= " * ,COUNT(*) as count ";
		}
		else{
			$sql .= " * ";
		}
		$sql .= (isset($qualifier['table'])) ? "FROM {$qualifier['table']}" : "";
		if(isset($qualifier['joins']) && count($qualifier['joins']) > 0){
			foreach ($qualifier['joins'] as $join_type => $join) {
				foreach($join as $table => $relation){
					$sql .= "{$join_type} JOIN {$table} ON {$relation}";
				}
			}
		}
		$query = $this->_execute_query($sql);
		echo $this->connection->error;
		return $query;
		echo "<pre>";
		print_r($query);
	}
	public function insert($table = "", $data = array()){
		if(isset($table) && isset($data) && count($data) > 0){
			$insert = 'INSERT INTO ';
			$fields = '';
			$values = '';
			$ctr = 0;
			foreach($data as $field=>$value){
				$fields .= ($ctr > 0) ? "," : "";
				$values .= ($ctr > 0) ? "," : "";
				$fields .= $field;
				$values .= "'" . $value . "'";
				$ctr++;
			}
			$insert .= $table . "({$fields}) VALUES ({$values}) ;";
			$query = $this->_execute_query($insert);
			echo $this->connection->error;
			if($query){
				return $this->connection->insert_id;
			}
		}
	}

	public function update($table = "", $data = array(), $reference = array()){
		if(isset($table) && isset($data) && isset($reference) && count($data) > 0 && count($reference) > 0){
			$update = 'UPDATE ';
			$fields = '';
			$values = '';
			$ctr = 0;
			foreach($data as $field => $value){
				$fields .= ($ctr > 0) ? ", " : "";
				$fields .= "{$field} = '{$value}' ";
				$ctr++;
			}
			foreach($reference as $attribute=>$target){
				$values .= "{$attribute} = {$target}";
			}
			$update .= $table . " SET {$fields} WHERE {$values}";
			$query = $this->_execute_query($update);
			echo $this->connection->error;
			return $query;
			echo "<pre>";
			print_r($query);
		}	
	}
	public function delete($table = "", $data = array(), $reference = array()){
		if(isset($table) && isset($data) && isset($reference) && count($data) > 0 && count($reference) > 0){
			$delete = 'DELETE FROM ';
			$fields = '';
			$values = '';
			$ctr = 0;

			foreach($data as $field => $value){
				$fields .= ($ctr > 0) ? ", " : "";
				$fields .= "{$field} = '{$value}' ";
				$ctr++;
			}
			foreach($reference as $attribute=>$target){
				$values .= "{$attribute} = {$target}";
			}
			$delete .= $table . "  WHERE {$values}";
			$query = $this->_execute_query($delete);
			echo $this->connection->error;
			return $query;
			echo "<pre>";
			print_r($query);
		}
	}
	public function save($user_data){
		if (isset($user_data) && count($user_data) > 0){
			$user_id = $this->db->insert('users', $user_data);
			return $user_id;	
		}
	}
}

?>