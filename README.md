# navigation_flutter

A new Flutter project.

# 🛒 Praktikum Flutter Navigasi

> **Nama:** Satrio Wisnu Adi Pratama  
> **NIM:** 2341720219  
> **Kelas:** D4 Teknik Informatika

---

## 📘 Deskripsi Proyek

Repositori ini berisi hasil **Praktikum Flutter Navigasi**.  
Proyek ini menampilkan aplikasi marketplace sederhana dengan fitur:

- Menampilkan daftar produk dalam **GridView**
- Detail produk dengan **halaman terpisah**
- Pengiriman data antar halaman menggunakan **Navigator / GoRouter**
- Efek transisi menggunakan **Hero widget**
- Footer berisi Nama dan NIM pembuat

---

## 🧩 Struktur Praktikum

### 🔹 Praktikum 1 – Membuat Project Flutter

- Membuat project Flutter baru
- Menyiapkan struktur folder `pages`, `models`, dan `widgets`

### 🔹 Praktikum 2 – Membuat Model Item

- Membuat `Item` model pada `models/item.dart`
- Atribut: `name`, `price`, `stock`, `rating`, `image`

### 🔹 Praktikum 3 – Membuat Homepage dengan GridView

- Menggunakan `GridView.builder` untuk menampilkan daftar produk
- Setiap produk dibungkus widget `ItemCard`
- Menampilkan foto, nama, harga, rating, dan stok

### 🔹 Praktikum 4 – Navigasi ke Halaman Detail

- Menambahkan halaman `ItemPage` untuk detail produk
- Mengirim data `Item` menggunakan:
  - **Navigator.push** (versi lama) atau
  - **GoRouter** (`state.extra`)
- Menggunakan **Hero widget** untuk animasi gambar

### 🔹 Praktikum 5 – Footer

- Menambahkan footer di homepage berisi **Nama dan NIM**

---

## 📂 Struktur Folder

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
