<?php
    //Menangkap seasson kemudian menampilkannya
    session_start();

    //Zona Waktu
    date_default_timezone_set('Asia/Jakarta');

    //Jika Session level_access Tidak ADa
    if(empty($_SESSION["level_access"])){
        $SessionIdAccess="";
        $SessionLevel="";
        $SessionEmail="";
        $SessionName="";
        $SessionFoto="";
    }else{

        //Jika id_access tidak ada
        if(empty($_SESSION["id_access"])){
            $SessionIdAccess="";
            $SessionLevel="";
            $SessionEmail="";
            $SessionName="";
            $SessionFoto="";
        }else{

            //Membuat Variabel
            $SessionIdAccess    = validateAndSanitizeInput($_SESSION ["id_access"]);
            $SessionLevel       = validateAndSanitizeInput($_SESSION ["level_access"]);
            
            //Validasi 'id_access' Berdasarkan 'level_access'
            if($SessionLevel=="Admin"){
                $QryAdmin   = mysqli_query($Conn,"SELECT * FROM admin WHERE id_admin='$SessionIdAccess'")or die(mysqli_error($Conn));
                $DataAdmin  = mysqli_fetch_array($QryAdmin);
                
                //Apabila 'id_admin' tidak ditemukan
                if(empty($DataAdmin['id_admin'])){
                    $SessionIdAccess="";
                    $SessionLevel="";
                    $SessionEmail="";
                    $SessionName="";
                    $SessionFoto="";
                }else{
                    $SessionIdAccess    = $DataAdmin['id_admin'];
                    $SessionLevel       = "Admin";
                    $SessionEmail       = $DataAdmin['admin_email'];
                    $SessionName        = $DataAdmin['admin_name'];
                    if(!empty($DataAdmin['admin_image'])){
                        $SessionFoto        = $DataAdmin['admin_image'];
                    }else{
                        $SessionFoto        = "No-Image.png";
                    }
                    
                }
            }else{
                $QrySiswa   = mysqli_query($Conn,"SELECT * FROM siswa WHERE id_siswa='$SessionIdAccess'")or die(mysqli_error($Conn));
                $DataSiswa  = mysqli_fetch_array($QrySiswa);
                
                //Apabila 'id_siswa' tidak ditemukan
                if(empty($DataSiswa['id_siswa'])){
                    $SessionIdAccess="";
                    $SessionLevel="";
                    $SessionEmail="";
                    $SessionName="";
                    $SessionFoto="";
                }else{
                    $SessionIdAccess    = $DataSiswa['id_siswa'];
                    $SessionLevel       = "Siswa";
                    $SessionEmail       = $DataSiswa['email'];
                    $SessionName        = $DataSiswa['nama'];
                    if(!empty($DataSiswa['foto_siswa'])){
                        $SessionFoto        = $DataSiswa['foto_siswa'];
                    }else{
                        $SessionFoto        = "No-Image.png";
                    }
                }
            }
        }
    }
?>
