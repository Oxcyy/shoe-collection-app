# 👟 Aplikasi Manajemen Koleksi Sepatu

Aplikasi mobile berbasis Flutter untuk mengelola koleksi sepatu pribadi. Dibuat sebagai Mini Project 1 mata kuliah Pemrograman Aplikasi Bergerak.

---

## 📱 Deskripsi Aplikasi

Aplikasi ini memungkinkan pengguna untuk mencatat, melihat, mengedit, dan menghapus koleksi sepatu mereka. Setiap sepatu memiliki informasi lengkap seperti nama, merek, ukuran, warna, kondisi, dan harga.

---

## ✨ Fitur Aplikasi

| Fitur | Deskripsi |
|-------|-----------|
| ➕ **Create** | Tambah data sepatu baru ke dalam koleksi |
| 📋 **Read** | Tampilkan seluruh daftar koleksi sepatu |
| ✏️ **Update** | Edit informasi sepatu yang sudah ada |
| 🗑️ **Delete** | Hapus sepatu dari koleksi |
| 🔍 **Detail** | Lihat detail lengkap setiap sepatu |

---

## 🧭 Navigasi Multi Halaman

Aplikasi ini menggunakan **Multi Page Navigation** dengan 3 halaman utama:

1. **Home Screen** — Menampilkan daftar seluruh koleksi sepatu
2. **Add/Edit Screen** — Form untuk menambah atau mengedit data sepatu
3. **Detail Screen** — Menampilkan informasi lengkap satu sepatu

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
- `PopupMenuButton` — Menu opsi (Edit/Hapus/Detail)
- `Column`, `Row`, `Container`, `Padding` — Layout

---

## 🗂️ Struktur Folder
```
lib/
├── main.dart
├── models/
│   └── shoe.dart
└── screens/
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

---

---

## 👤 Identitas Mahasiswa

| | |
|---|---|
| **Nama** | Yulius Pune' |
| **NIM** | 2409116110 |
| **Kelas** | C 2024 |
| **Mata Kuliah** | Pemrograman Aplikasi Bergerak |
| **Tahun** | PRAKTISI 2026 Genap |