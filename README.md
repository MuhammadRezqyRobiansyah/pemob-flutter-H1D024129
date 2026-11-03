# Praktikum Pemrograman Mobile: Modul 2 & Modul 3 (Framework Flutter)

> **Mata Kuliah:** Praktikum Pemrograman Mobile  
> **Nama Lengkap:** Muhammad Rezqy Robiansyah  
> **NIM:** H1D024129  
> **Program Studi:** Informatika  
> **Fakultas:** Teknik, Universitas Jenderal Soedirman  
> **Framework:** Flutter (Dart SDK 3.x)  

---

## 📌 Ringkasan Tugas & Modul

Repositori ini menggabungkan implementasi menyeluruh dari dua modul praktikum:

### 1. Modul 2: Pengenalan dan Desain Framework Flutter
- **Hello World** (`lib/hello_world.dart`): Pengenalan struktur dasar `StatelessWidget`, `MaterialApp`, `Scaffold`, `AppBar`, dan `Center Text`.
- **Widget Column** (`lib/column_widget.dart`): Penataan komponen antarmuka vertikal.
- **Widget Row** (`lib/row_widget.dart`): Penataan komponen antarmuka horizontal.
- **Form Produk & Navigasi Detail** (`lib/ui/produk_form.dart` & `lib/ui/produk_detail.dart`): Input data barang (Kode Produk, Nama Produk, Harga) dan passing data antar halaman menggunakan `Navigator.push` dan `MaterialPageRoute`.
- **List View Data Produk** (`lib/ui/produk_page.dart`): Menampilkan daftar katalog produk bertipe Card ListTile (`Kulkas`, `Playstation`, `Radio`).

### 2. Modul 3: Routes, Side Menu, Login dan Local Storage
- **Halaman Login** (`lib/login_page.dart`): Sistem login form dengan input username dan password (`obscureText`), validasi autentikasi, serta alert dialog.
- **Local Storage SharedPreferences**: Menyimpan sesi nama pengguna (`username`) secara lokal di perangkat menggunakan pustaka `shared_preferences`.
- **Halaman Utama (Home Page)** (`lib/home_page.dart`): Mengambil dan menampilkan data username dari SharedPreferences secara asinkronus (`_loadUsername()`).
- **Drawer Side Menu** (`lib/sidemenu.dart`): Menu navigasi geser (*Drawer*) yang menghubungkan halaman Home, About, seluruh halaman latihan Modul 2, dan fitur Logout.
- **Halaman About** (`lib/about_page.dart`): Halaman informasi aplikasi yang juga terintegrasi dengan Side Menu.

---

## 🔑 Kredensial Autentikasi Login (Simulasi)
Untuk menguji proses autentikasi pada aplikasi:
* **Username:** `admin`
* **Password:** `admin`

*(Jika username dan password sesuai, aplikasi akan menampilkan alert **"Anda Berhasil Login"** lalu diarahkan ke **Home Page**. Jika salah, akan muncul alert **"Username dan Password Salah"**).*

---

## 📁 Struktur Direktori Proyek

```text
D:\pemob_flutter\
├── lib/
│   ├── ui/
│   │   ├── produk_form.dart            # Form input data produk (Modul 2)
│   │   ├── produk_detail.dart          # Tampilan detail produk (Modul 2)
│   │   └── produk_page.dart            # ListView katalog produk (Modul 2)
│   ├── hello_world.dart                # Halaman Hello World (Modul 2)
│   ├── column_widget.dart              # Halaman contoh Widget Column (Modul 2)
│   ├── row_widget.dart                 # Halaman contoh Widget Row (Modul 2)
│   ├── login_page.dart                 # Halaman Login & Local Storage (Modul 3)
│   ├── home_page.dart                  # Halaman Home & render SharedPreferences (Modul 3)
│   ├── about_page.dart                 # Halaman About (Modul 3)
│   ├── sidemenu.dart                   # Komponen Drawer Side Menu terintegrasi (Modul 3)
│   └── main.dart                       # Entry point aplikasi (Root MaterialApp)
├── pubspec.yaml                        # Dependensi (flutter, shared_preferences, icons)
├── run_chrome.bat                      # Script 1-klik menjalankan di Google Chrome
├── run_android.bat                     # Script 1-klik menjalankan di Android Emulator / HP
└── README.md                           # Laporan dokumentasi praktikum
```

---

## 🚀 Panduan Menjalankan Aplikasi & Setup

### 🔹 Opsi 1: Paling Mudah & Cepat (Google Chrome Web)
Tidak memerlukan emulator Android yang berat. Cukup gunakan browser Google Chrome:
1. Buka folder `D:\pemob_flutter`.
2. **Double-click file `run_chrome.bat`**.
3. Browser Chrome akan otomatis terbuka menampilkan aplikasi dalam ukuran responsif.

Atau via Terminal:
```bash
cd /d D:\pemob_flutter
flutter run -d chrome
```

---

### 🔹 Opsi 2: Menjalankan di Android Emulator / HP Fisik
1. Pastikan Emulator Android sudah aktif atau HP Android sudah terhubung via USB Debugging.
2. **Double-click file `run_android.bat`** (atau ketik `flutter run` di terminal).
3. Aplikasi akan dikompilasi dan otomatis terbuka di layar Android.

---

## 📸 Panduan Alur Pengambilan Screenshot (SS) untuk Laporan

Aplikasi ini sudah dirancang terintegrasi sehingga Anda dapat mengambil seluruh screenshot yang dibutuhkan oleh Modul 2 & Modul 3 dengan sangat mudah:

1. **Screenshot 1 - Halaman Login (Modul 3):** Buka aplikasi, tampil form login dengan field Username dan Password.
2. **Screenshot 2 - Alert Gagal Login (Modul 3):** Masukkan username/password sembarang, klik Login -> Muncul alert *"Username dan Password Salah"*.
3. **Screenshot 3 - Alert Berhasil Login (Modul 3):** Masukkan `admin` dan `admin`, klik Login -> Muncul alert *"Anda Berhasil Login"*.
4. **Screenshot 4 - Halaman Home (Modul 3):** Klik OK pada alert -> Tampil halaman Home dengan teks *"Ini adalah halaman User admin"*.
5. **Screenshot 5 - Drawer Side Menu (Modul 3):** Klik ikon menu garis tiga (kiri atas) -> Tampil Drawer Side Menu dengan nama, NIM, menu Home, About, Logout, dan sub-menu Modul 2.
6. **Screenshot 6 - Halaman About (Modul 3):** Klik menu *About* pada drawer -> Tampil halaman About Page.
7. **Screenshot 7 - List Data Produk (Modul 2):** Klik menu *List Data Produk* pada drawer -> Tampil Card ListView Kulkas, Playstation, Radio.
8. **Screenshot 8 - Form Input Produk (Modul 2):** Klik menu *Form Input Produk* pada drawer -> Tampil form input Kode Produk, Nama Produk, dan Harga.
9. **Screenshot 9 - Detail Produk (Modul 2):** Isi data pada form produk, lalu klik Simpan -> Tampil halaman Detail Produk beserta data yang diinputkan.
10. **Screenshot 10 - Widget Column & Row (Modul 2):** Buka menu *Widget Column* dan *Widget Row* pada drawer untuk mengambil screenshot tampilan vertikal dan horizontal.
