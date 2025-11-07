# 🏫 InvSchool v1.0

**InvSchool v1.0** adalah aplikasi berbasis web yang dirancang untuk membantu sekolah dalam mengelola proses permintaan perbaikan, perawatan, isi ulang, serta pembelian fasilitas dan sarana belajar secara terstruktur dan efisien.

---

## 📋 Deskripsi Umum

Aplikasi ini mempermudah komunikasi antara **siswa** dan **admin sekolah** dalam mengelola berbagai kebutuhan fasilitas sekolah.  
Setiap siswa dapat mengajukan **permintaan perbaikan atau kebutuhan**, sementara **admin** dapat meninjau, menyetujui, serta memperbarui status setiap permintaan secara langsung melalui dashboard aplikasi.

---

## 👥 Entitas Utama

1. **Admin**
   - Mengelola pengaturan aplikasi.
   - Mengatur data akses, kelas, dan siswa.
   - Meninjau dan memproses permintaan yang diajukan siswa.
   - Melakukan pembaruan status setiap permintaan (Diterima, Proses, Selesai, atau Ditolak).

2. **Siswa**
   - Mengirimkan permintaan terkait fasilitas sekolah.
   - Melihat status perkembangan dari setiap permintaan yang diajukan.

---

## ⚙️ Teknologi yang Digunakan

| Komponen | Versi / Teknologi |
|-----------|------------------|
| Bahasa Pemrograman | PHP 7.4 |
| Database | MySQL 9.1.0 |
| Front-End | HTML, CSS |
| Framework UI | Bootstrap 5 |
| Library JavaScript | jQuery (versi terbaru) |

Aplikasi ini dikembangkan dengan prinsip **clean code**, **responsif**, dan **mudah diintegrasikan** dengan sistem informasi sekolah lainnya.

---

## 🧭 Alur Penggunaan Aplikasi

1. **Admin Login**  
   Admin masuk ke sistem untuk mengelola data aplikasi.

2. **Pengaturan Awal oleh Admin**
   - Mengatur konfigurasi aplikasi (nama, URL, tahun rilis, dll).  
   - Mengelola data akses pengguna (Admin/Siswa).  
   - Menginput data kelas dan siswa.

3. **Siswa Mengajukan Permintaan**
   - Siswa login ke aplikasi.
   - Mengisi form permintaan sesuai kategori (perbaikan, perawatan, isi ulang, pembelian, dll).

4. **Admin Meninjau dan Menindaklanjuti**
   - Melihat daftar permintaan yang masuk.  
   - Melakukan approval atau pembaruan status permintaan.  
   - Memberikan keterangan tambahan (misalnya catatan atau hasil penyelesaian).

5. **Siswa Melihat Status**
   - Siswa dapat memantau perkembangan status permintaan secara real-time.

---

## 🗂️ Menu Utama Aplikasi

| Menu | Deskripsi |
|------|------------|
| **Dashboard** | Menampilkan statistik dan ringkasan aktivitas sistem. |
| **Pengaturan** | Mengelola informasi dasar aplikasi. |
| **Akses** | Mengatur hak akses admin dan pengguna. |
| **Kelas** | Menambah dan mengelola data kelas siswa. |
| **Siswa** | Mengelola data siswa. |
| **Permintaan** | Menampilkan daftar permintaan dan statusnya. |
| **Laporan** | Menyediakan laporan aktivitas dan riwayat permintaan. |
| **Bantuan** | Panduan penggunaan sistem. |
| **Logout** | Keluar dari aplikasi. |

---

## 🧑‍💻 Pengembang

- **Nama Aplikasi:** InvSchool v1.0  
- **Dikembangkan oleh:** Aurel  
- **Tahun Rilis:** 2025  
- **URL Dasar:** `http://localhost/inventory_sekolah`

---

## 🚀 Tujuan Pengembangan

- Meningkatkan efisiensi dalam pengelolaan sarana dan prasarana sekolah.  
- Menciptakan transparansi antara siswa dan pihak sekolah terkait permintaan fasilitas.  
- Mempermudah dokumentasi dan pelaporan aktivitas perawatan dan perbaikan.

---

## 🧩 Catatan Tambahan

> Pastikan server mendukung PHP ≥ 7.4 dan MySQL ≥ 9.1.0 sebelum menjalankan aplikasi ini.  
> Direkomendasikan untuk menggunakan browser modern seperti **Chrome**, **Firefox**, atau **Edge** versi terbaru.

---

### 📘 Lisensi

Aplikasi ini dikembangkan untuk keperluan internal sekolah dan tidak untuk tujuan komersial tanpa izin pengembang.
