<?php
  date_default_timezone_set("Asia/Jakarta");
  $alamat_website = 'https://akbarryyan.my.id/';
  $host = "localhost";
  $username = "akbarryy_an";
  $password = "o}INj3Yc,_s}";
  $database = "akbarryy_an";
  $koneksi = mysqli_connect($host, $username, $password, $database);
  if (!$koneksi) {
    echo "Kesalahan : Tidak dapat terhubung ke database." . PHP_EOL;
    echo "Kode Kesalahan : " . mysqli_connect_errno() . PHP_EOL;
    echo "Pesan Kesalahan : " . mysqli_connect_error() . PHP_EOL;
    exit;
  }
?>