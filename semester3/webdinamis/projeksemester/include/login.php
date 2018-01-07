<?php include "db.php";?>

<?php 
session_start();
if(isset($_POST["login"])){
	$username = mysqli_real_escape_string($koneksi, $_POST['username']);
	$password = mysqli_real_escape_string($koneksi, $_POST['password']);

	$query = "SELECT * FROM users WHERE user_name ='{$username}'";
	$select_user = mysqli_query($koneksi, $query);
	if(!$select_user){
		die("QUERY GAGAL ".mysqli_error($koneksi));
	}

	while ($row = mysqli_fetch_array($select_user)) {
		$db_user_id = $row['user_id'];
		$db_user_name = $row['user_name'];
		$db_user_password = $row['user_password'];
		$db_user_firstname = $row['user_firstName'];
		$db_user_lastname = $row['user_lastName'];
		$db_user_role = $row['user_role'];
	}

	if($username !== $db_user_name or $password !== $db_user_password){
		header("Location: ../admin/login.html");
	}elseif($username == $db_user_name && $password == $db_user_password){
		$_SESSION['user_name'] = $db_user_name;
		$_SESSION['user_firstName'] = $db_user_firstname;
		$_SESSION['user_lastName'] = $db_user_lastname;
		$_SESSION['user_role'] = $db_user_role;
		header("Location: ../admin");
	}

	echo $db_user_password;
	echo $password;
}

?>
