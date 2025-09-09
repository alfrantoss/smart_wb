<?php
session_start();
error_reporting(0);



//JIKA DIINSTAL DISUBDOMAIN HOSTING HAPUS TANDA // BARIS DIBAWAH INI

$uri = $_SERVER['REQUEST_URI'];
$baseurl = explode("/",$uri);
$parts = explode("/", trim($uri, "/")); // hasil: ['smart_wb', 'myapp', 'index.php']
$folder = isset($parts[0]) ? '/' . $parts[0] : '';

// Cek apakah user sudah login
if (isset($_SESSION['id_user'])) {
    $baseurl = "http://localhost/smart_wb";
} else {
    $baseurl = "http://" . $_SERVER['HTTP_HOST'];
}
(isset($baseurl[1])) ? $pg = $baseurl[1] : $pg = '';
(isset($baseurl[2])) ? $ac = $baseurl[2] : $ac = '';
(isset($baseurl[3])) ? $id = $baseurl[3] : $id = 0;
//echo "Base URL: $folder <br>";


$host = 'localhost';
$username = 'root';
$password = '';
$database = 'db_smart_wb';

$koneksi = mysqli_connect($host, $username, $password, "");
if ($koneksi) {
	$debe = mysqli_select_db($koneksi, $database);
	if ($debe) {
		$query = mysqli_query($koneksi, "SELECT * FROM pengaturan WHERE id_aplikasi='1'");
		if ($query) {
			$setting = mysqli_fetch_array($query);
			mysqli_set_charset($koneksi, 'utf8');
			date_default_timezone_set($setting['waktu']);
		}
	}
}

$semester = $setting['semester'];
$tapel = $setting['tp'];
$tanggal = date('Y-m-d');
$waktumu = date('Y-m-d H:i:s');
$bulan = date('m');
$tahun = date('Y');
?>