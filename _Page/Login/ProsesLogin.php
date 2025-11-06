<?php
    session_start();
    include "../../_Config/Connection.php";
    include "../../_Config/GlobalFunction.php";
    
    // Set header agar selalu mengembalikan JSON
    header('Content-Type: application/json');

    // Tambahkan beberapa header keamanan
    header('X-Content-Type-Options: nosniff');
    header('X-Frame-Options: DENY');
    header('X-XSS-Protection: 1; mode=block');

    // Tetapkan zona waktu
    date_default_timezone_set('Asia/Jakarta');

    // Timestamp sekarang
    $timestamp_now = date('Y-m-d H:i:s');

    // Atur waktu login
    $expired_seconds = 60 * 60; // 1 hour
    $date_expired = date('Y-m-d H:i:s', strtotime($timestamp_now) + $expired_seconds);

    // Fungsi untuk memvalidasi input
    function validateAndSanitizeInputNew($data) {
        return htmlspecialchars(stripslashes(trim($data)));
    }

    // Inisialisasi respon default
    $response = [
        'status' => 'error',
        'message' => 'Terjadi kesalahan.'
    ];

    // Validasi input Tidak Boleh Kosong
    $email = isset($_POST["email"]) ? filter_var(validateAndSanitizeInputNew($_POST["email"]), FILTER_VALIDATE_EMAIL) : null;
    $password = isset($_POST["password"]) ? validateAndSanitizeInputNew($_POST["password"]) : null;
    $captcha = isset($_POST["captcha"]) ? validateAndSanitizeInputNew($_POST["captcha"]) : null;
    $level_akses = isset($_POST["level_akses"]) ? validateAndSanitizeInputNew($_POST["level_akses"]) : null;

    if (!$email) {
        $response['message'] = 'Email tidak valid atau kosong.';
    } elseif (empty($password)) {
        $response['message'] = 'Password tidak boleh kosong.';
    } elseif (empty($captcha)) {
        $response['message'] = 'Captcha tidak boleh kosong.';
    } elseif (empty($level_akses)) {
        $response['message'] = 'Level Akses tidak boleh kosong.';
    } else {
        
        // Validasi Captcha
        $QryCaptcha = $Conn->prepare("SELECT * FROM captcha  WHERE captcha  = ?");
        $QryCaptcha->bind_param("s", $captcha);
        $QryCaptcha->execute();
        $DataCaptcha = $QryCaptcha->get_result()->fetch_assoc();

        if (!$DataCaptcha) {
            $response['message'] = 'Captcha tidak valid.';
        } elseif ($DataCaptcha['datetime_expired'] < $timestamp_now) {
            $response['message'] = 'Captcha expired.';
        } else {

            // Validasi Email dan Password (Admin)
            if($level_akses=="Admin"){
                $stmt = $Conn->prepare("SELECT * FROM admin WHERE admin_email = ?");
                $stmt->bind_param("s", $email);
                $stmt->execute();
                $DataAkses = $stmt->get_result()->fetch_assoc();

                //Validasi Password
                if ($DataAkses && password_verify($password, $DataAkses['admin_password'])) {
                    $id_access = $DataAkses["id_admin"];
                    
                    //Jika Valid Buatkan Session
                    $_SESSION["level_access"]   = "Admin";
                    $_SESSION["id_access"]      = $id_access;
                    $_SESSION["NotifikasiSwal"] = "Login Berhasil";

                    //Buat response
                    $response['status']     = 'success';
                    $response['message']    = 'Login berhasil.';
                } else {
                    $response['message'] = 'Kombinasi email dan password admin tidak valid.';
                }
            }else{
                // Validasi Email dan Password (Siswa)
                $stmt = $Conn->prepare("SELECT * FROM siswa WHERE email = ?");
                $stmt->bind_param("s", $email);
                $stmt->execute();
                $DataAkses = $stmt->get_result()->fetch_assoc();

                //Validasi Password
                if ($DataAkses && password_verify($password, $DataAkses['password'])) {
                    $id_access = $DataAkses["id_siswa"];
                    
                    //Jika Valid Buatkan Session
                    $_SESSION["level_access"]   = "Siswa";
                    $_SESSION["id_access"]      = $id_access;
                    $_SESSION["NotifikasiSwal"] = "Login Berhasil";

                    //Buat response
                    $response['status']     = 'success';
                    $response['message']    = 'Login berhasil.';
                } else {
                    $response['message'] = 'Kombinasi email dan password siswa tidak valid.';
                }
            }
        }
    }

    // Output respon sebagai JSON
    echo json_encode($response);
?>
