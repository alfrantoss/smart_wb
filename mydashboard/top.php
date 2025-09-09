<?php
require("../konek/koneksi.php");
require("../konek/function.php");
require("../konek/apk.php");
require("../konek/crud.php");
(isset($_SESSION['id_siswa'])) ? $id_siswa = $_SESSION['id_siswa'] : $id_siswa = 0;
($id_siswa == 0) ?  header("Location:$baseurl/mulai.php") : null;
$siswa = mysqli_fetch_array(mysqli_query($koneksi, "SELECT * FROM siswa WHERE id_siswa='$id_siswa'"));
(isset($_GET['pg'])) ? $pg = $_GET['pg'] : $pg = '';
(isset($_GET['ac'])) ? $ac = $_GET['ac'] : $ac = '';

$keranjang = mysqli_num_rows(mysqli_query($koneksi, "SELECT * FROM keranjang  WHERE idsiswa='$id_siswa'"));
echo "Base URL: $baseurl <br>";
?>
<!DOCTYPE html>
<html lang="en" translate="no">
    <head>
        <meta charset="utf-8" />
		<meta name="google" content="notranslate">
        <meta name='viewport' content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' />
   <meta name="description" content="Sandik All in One">
    <meta name="keywords" content="Sandik All in One">
    <meta name="author" content="sandik">   
    <title><?= $setting['sekolah'] ?></title>
 
    <link href="<?= $baseurl ?>/smart_wb/font/material.css" rel="stylesheet">
    <link href="<?= $baseurl ?>/smart_wb/assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="<?= $baseurl ?>/smart_wb/assets/plugins/perfectscroll/perfect-scrollbar.css" rel="stylesheet">
    <link href="<?= $baseurl ?>/smart_wb/assets/plugins/pace/pace.css" rel="stylesheet">
	<link href="<?= $baseurl ?>/smart_wb/assets/plugins/datatables/datatables.min.css" rel="stylesheet">
    <link href="<?= $baseurl ?>/smart_wb/assets/plugins/highlight/styles/github-gist.css" rel="stylesheet">
    <link rel='stylesheet' href='<?= $baseurl ?>/smart_wb/assets/izitoast/css/iziToast.min.css'>
	<script src="<?= $baseurl ?>/smart_wb/assets/plugins/jquery/jquery-3.5.1.min.js"></script>
    <link href="<?= $baseurl ?>/smart_wb//assets/css/main.css" rel="stylesheet">    
    <link rel="stylesheet" href="<?= $baseurl ?>/smart_wb/assets/css/sweetalert2.min.css">
	<link href="<?= $baseurl ?>/smart_wb/assets/plugins/select2/css/select2.min.css" rel="stylesheet">
	<script src='<?= $baseurl ?>/smart_wb/assets/tinymce/tinymce.min.js'></script>
	<link href="<?= $baseurl ?>/smart_wb/assets/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet">
    <link rel='stylesheet' href='<?= $baseurl ?>/smart_wb/assets/datetimepicker/jquery.datetimepicker.css' />
	<script src="<?= $baseurl ?>/smart_wb/assets/js/geo-min.js" type="text/javascript" charset="utf-8"></script>
 <link rel="icon" type="image/png" sizes="16x16" href="<?= $baseurl ?>/smart_wb/images/<?= $setting['logo'] ?>">
	  <style type="text/css">
   .bold { font-weight: bold; }
   .pull-right{
    float: right;
    display: block;
	margin-top:-30px;
	
  }
   .kanan{
    float: right;
    display: block;
	margin-top:5px;
	
  }
.edis2 {
  background-size: 360px;
  background-image: url('/smart_wb/images/tutwuri2.png');
  background-repeat: no-repeat;
  background-position: top right; 
}

</style> 
<style>
.responsive {
  width: 80px;
  height: auto;
  text-align:center;
}

</style>

</head>
<body>
