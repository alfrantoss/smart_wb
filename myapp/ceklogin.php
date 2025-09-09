<?php
require("../konek/koneksi.php");
require("../konek/function.php");

// Cek koneksi database
if (!$koneksi) {
    die("Koneksi ke database gagal: " . mysqli_connect_error());
}

$waktu = date('Y-m-d H:i:s');
$username = mysqli_escape_string($koneksi, $_POST['username']);
$password = mysqli_escape_string($koneksi, $_POST['password']);
$lvl = mysqli_escape_string($koneksi, $_POST['level']);

$query = mysqli_query($koneksi, "SELECT * FROM users WHERE username='$username' and level='$lvl'");
if (!$query) {
    die("Query gagal: " . mysqli_error($koneksi));
}

$cek = mysqli_num_rows($query);
$user = mysqli_fetch_array($query);

if ($cek <> 0) {
    if ($user['level'] == 'admin') {
        if (!password_verify($password, $user['password'])) {
            echo "nopass";
        } else {
            $_SESSION['id_user'] = $user['id_user'];
            $_SESSION['level'] = 'admin';
            mysqli_query($koneksi, "INSERT INTO log (id_user,type,text,date,level) VALUES ('$user[id_user]','login','Masuk','$waktu','admin')");
            header('Location: index.php');
        }

    } elseif ($user['level'] == 'guru') {
        if ($password == $user['password']) {
            $_SESSION['id_user'] = $user['id_user'];
            $_SESSION['level'] = 'guru';
            mysqli_query($koneksi, "INSERT INTO log (id_user,type,text,date,level) VALUES ('$user[id_user]','login','Masuk','$waktu','guru')");
           header('Location: index.php');
        } else {
            echo "nopass";
        }

    } elseif ($user['level'] == 'staff') {
        if ($password == $user['password']) {
            $_SESSION['id_user'] = $user['id_user'];
            $_SESSION['level'] = 'staff';
            mysqli_query($koneksi, "INSERT INTO log (id_user,type,text,date,level) VALUES ('$user[id_user]','login','Masuk','$waktu','staff')");
           header('Location: index.php');
        } else {
            echo "nopass";
        }

    } elseif ($user['level'] == 'awas') {
        if ($password == $user['password']) {
            $_SESSION['id_user'] = $user['id_user'];
            $_SESSION['level'] = 'awas';
            mysqli_query($koneksi, "INSERT INTO log (id_user,type,text,date,level) VALUES ('$user[id_user]','login','Masuk','$waktu','pengawas')");
           header('Location: index.php');
        } else {
            echo "nopass";
        }
    }

} elseif ($cek == 0) {
    echo "td";
}
