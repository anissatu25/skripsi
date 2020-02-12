<?php
error_reporting(0);
session_start();
  include"config/config.php";
  include"config/koneksi.php";
 $nama = $_SESSION['username'];
  if(!isset($_SESSION['username'])){
  
   
    error_reporting(0);
  }
  ?>

  <?php
if ($_GET[module]=='home'){

  include "modul/berhasil.php";
  
}

 
elseif ($_GET[module]=='mstadmin'){
     if ($_SESSION['level']=='1'||$_SESSION['level']=='2'||$_SESSION['level']=='3'){
    include "modul/mstadmin.php";
}
}

 
elseif ($_GET[module]=='fakultas'){
     if ($_SESSION['level']=='1'||$_SESSION['level']=='2'||$_SESSION['level']=='3'){
    include "modul/fakultas.php";
}
}

elseif ($_GET[module]=='mstuser'){
     if ($_SESSION['level']=='1'||$_SESSION['level']=='2'||$_SESSION['level']=='3'){
    include "modul/mstuser.php";
}
}


elseif ($_GET[module]=='mstkandidat'){
     if ($_SESSION['level']=='1'||$_SESSION['level']=='2'||$_SESSION['level']=='3'){
    include "modul/mstkandidat.php";
}
}


elseif ($_GET[module]=='grafik'){
     if ($_SESSION['level']=='1'||$_SESSION['level']=='2'||$_SESSION['level']=='3'){
    include "modul/grafik.php";
}
}


elseif ($_GET[module]=='laporan'){
     if ($_SESSION['level']=='1'||$_SESSION['level']=='2'||$_SESSION['level']=='3'){
    include "modul/laporan.php";
}
}
else{
  echo "<p><b>MODUL BELUM ADA ATAU BELUM LENGKAP</b></p>";
}

