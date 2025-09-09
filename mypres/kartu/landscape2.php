<?php ob_start();
error_reporting(0);
require("../../konek/koneksi.php");
require("../../konek/function.php");
require("../../konek/crud.php");
include "../../vendor/phpqrcode/qrlib.php";
session_start();
if (!isset($_SESSION['id_user'])) {
    die('Anda tidak diijinkan mengakses langsung');
}
$mesin = mysqli_fetch_array(mysqli_query($koneksi, "SELECT * FROM mesin_absen  WHERE id='$setting[mesin]'"));
$id = $_POST['id'];
$ids = $_POST['ids'];
$absQ = mysqli_query($koneksi, "SELECT * FROM siswa WHERE id_siswa BETWEEN '$id' AND '$ids'");
		
while ($sis = mysqli_fetch_array($absQ)) : 
		  
$tempdir = "../../temp/"; 
if (!file_exists($tempdir)) 
    mkdir($tempdir);


$codeContents = $sis['nis'];

QRcode::png($codeContents, $tempdir . $sis['nis'] . '.png', QR_ECLEVEL_M, 4);
endwhile;
?>
<!DOCTYPE html>
<html>

<head>
    <meta charset='utf-8'>

    <title>KARPEL</title>
<style>

body { 
margin-top: 35px; 
margin-left: 5px; 
margin-bottom: 35px; 

}

</style>

</head>

<body>
<table width='100%' align='center' cellpadding='0px' style="margin-top:0px;">
    <tr>
	
	<?php $no=0; ?>
	 <?php $siswaQ = mysqli_query($koneksi, "SELECT * FROM siswa WHERE id_siswa BETWEEN '$id' AND '$ids'"); ?>
	
        <?php while ($r = mysqli_fetch_array($siswaQ)) : ?>
		<?php 
		if($r['jk']=='L'){
			$jkel='Laki-laki';
		}else{
			$jkel='Perempuan';
		} 
		
		?>
		<?php   $no++; ?>

<td width='33%'>
                
                    <table style="text-align:center; width:100%">
                        <tr>
						 
                            <td style="text-align:left; vertical-align:top">	
									
                              <img src="../../images/kartu/<?= $mesin['belakang'] ?>" width="328px" height="208px">							
						
							<div class="text-center" style="margin-top:-255px;margin-left:10px;font-size:10px">
							
							<p style="text-align:center;color:#fff;margin-left:10px;font-size:8px;">							
							<?php if($setting['jenis']==1): ?>
							<b>DINAS PENDIDIKAN DAN KEBUDAYAAN KAB. <?= strtoupper($setting['kabupaten']) ?><br><?= $setting['sekolah'] ?></b>						
							<?php else : ?>
							<b>DEPARTEMEN AGAMA KAB. <?= strtoupper($setting['kabupaten']) ?><br><?= $setting['sekolah'] ?></b>						
							<?php endif; ?>
							<br><small>Alamat : <?= $setting['alamat'] ?> Desa <?= $setting['desa'] ?> Kec. <?= $setting['kecamatan'] ?> Kab. <?= $setting['kabupaten'] ?></small>
							</p>
							<img src="../../images/<?= $setting['logo'] ?>" width="30px" style="margin-top:-25px;">
							<br><br>
							<table>
							</tr>
								<tr>
								<td>NAMA</td>
								<td>:</td>
								<td><?= $r['nama'] ?></td>
								</tr>
								<tr>
								<td>T. LAHIR</td>
								<td>:</td>
								<td><?= $r['t_lahir'] ?></td>
								</tr>
								<tr>
								<td>TGL LAHIR</td>
								<td>:</td>
								<td><?= $r['tgl_lahir'] ?></td>
								</tr>
								<tr>
								<td>JENIS KELAMIN</td>
								<td>:</td>
								<td><?= $jkel ?></td>
								</tr>
								<tr>
								<td>NIS</td>
								<td>:</td>
								<td><?= $r['nis'] ?></td>
								</tr>
								<tr>
								<td>NISN</td>
								<td>:</td>
								<td><?= $r['nisn'] ?></td>
								</tr>
								</table>
								  
							</div>
                        
							</td>
							
							</tr>
						
							</table>
							<br>
            </td>
            <?php if (($no % 2) == 0) : ?>
    </tr>
	<tr>
    <?php endif; ?>
<?php endwhile; ?>

    </tr>
</table>
 
</body>
</html>
<?php
$html = ob_get_clean();
require_once '../../pdf/autoload.php';

use Dompdf\Dompdf;

$dompdf = new Dompdf();
$dompdf->loadHtml($html);
$dompdf->setPaper('A4', 'portrait');
$dompdf->render();
$dompdf->stream("KARPEG.pdf", array("Attachment" => false));
exit(0);
?>