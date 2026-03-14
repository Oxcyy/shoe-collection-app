# 👟 Aplikasi Manajemen Koleksi Sepatu

Aplikasi mobile berbasis Flutter untuk mengelola koleksi sepatu pribadi dengan integrasi database Supabase. Dibuat sebagai Mini Project 2 mata kuliah Pemrograman Aplikasi Bergerak.

---

## 📱 Deskripsi Aplikasi

Aplikasi ini memungkinkan pengguna untuk login, mencatat, melihat, mengedit, dan menghapus koleksi sepatu mereka. Data disimpan secara permanen menggunakan database Supabase.

---

## ✨ Fitur Aplikasi

| Fitur | Deskripsi |
|-------|-----------|
| 🔐 **Login & Register** | Autentikasi menggunakan Supabase Auth |
| ➕ **Create** | Tambah data sepatu baru ke Supabase |
| 📋 **Read** | Tampilkan seluruh daftar koleksi dari Supabase |
| ✏️ **Update** | Edit informasi sepatu yang sudah ada |
| 🗑️ **Delete** | Hapus sepatu dari koleksi |
| 🌙 **Dark/Light Mode** | Ganti tema gelap dan terang |
| 🔍 **Detail** | Lihat detail lengkap setiap sepatu |

---

## 🧭 Navigasi Multi Halaman

1. **Login Screen** — Halaman login
2. **Register Screen** — Halaman daftar akun baru
3. **Home Screen** — Daftar seluruh koleksi sepatu
4. **Add/Edit Screen** — Form tambah atau edit data sepatu
5. **Detail Screen** — Informasi lengkap satu sepatu

---

## 🧩 Widget yang Digunakan

- `Scaffold`, `AppBar` — Struktur dasar halaman
- `ListView.builder` — Daftar koleksi yang efisien
- `TextFormField` — Input teks (Nama, Merek, Ukuran, Warna, Harga)
- `DropdownButtonFormField` — Pilihan kondisi sepatu
- `FloatingActionButton` — Tambah sepatu baru
- `ElevatedButton`, `OutlinedButton`, `TextButton` — Tombol aksi
- `AlertDialog` — Konfirmasi hapus
- `SnackBar` — Notifikasi aksi berhasil
- `CircularProgressIndicator` — Loading indicator
- `RefreshIndicator` — Pull to refresh
- `PopupMenuButton` — Menu opsi (Edit/Hapus/Detail)
- `IconButton` — Toggle dark/light mode & logout

---

## 🗂️ Struktur Folder
```
lib/
├── main.dart
├── models/
│   └── shoe.dart
└── screens/
    ├── login_screen.dart
    ├── register_screen.dart
    ├── home_screen.dart
    ├── add_edit_screen.dart
    └── detail_screen.dart
```

---

## 🚀 Cara Menjalankan
```bash
git clone https://github.com/Oxcyy/shoe-collection-app.git
cd shoe-collection-app
flutter pub get
flutter run
```

> **Catatan:** Buat file `.env` di root project dan isi dengan Supabase URL dan API Key kamu.

---

## 🛠️ Tech Stack

- **Framework:** Flutter 3.x
- **Database:** Supabase
- **Auth:** Supabase Auth
- **Package:** supabase_flutter, flutter_dotenv, intl

---

## 👤 Identitas Mahasiswa

| | |
|---|---|
| **Nama** | Yulius Pune' |
| **NIM** | 2409116110 |
| **Kelas** | C 2024 |
| **Mata Kuliah** | Pemrograman Aplikasi Bergerak |
| **Tahun** | PRAKTISI 2026 Genap |