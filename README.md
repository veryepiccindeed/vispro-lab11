# Aplikasi Flutter dengan Navigasi Lanjutan (Advanced Navigation)

 Aplikasi ini memiliki fitur navigasi lanjutan di mana pengguna dapat berpindah antara beberapa layar menggunakan tab navigasi bawah, dengan masing-masing tab memiliki tombol untuk menavigasi ke layar tertentu. Setiap layar juga menyediakan tombol untuk kembali ke layar utama yang berisi bottom navigation bar.

## Fitur Utama
- **Bottom Navigation Bar**: Terdapat dua tab utama, yaitu **First Screen** dan **Second Screen**, yang memungkinkan navigasi antar layar.
- **Navigasi dengan Push**: Setiap tab memiliki tombol untuk menavigasi ke layar baru (FirstScreen atau SecondScreen).
- **Navigasi Kembali dengan Pop**: Layar-layar baru yang dibuka dapat kembali ke layar utama menggunakan tombol "Go Back" yang ada di setiap layar.
- **Navigasi Dinamis**: Navigasi dilakukan secara dinamis berdasarkan tab yang dipilih, dengan menggunakan `Navigator.push` untuk navigasi dan `Navigator.pop` untuk kembali.

## Alur Penggunaan
1. **Layar Utama**: Ketika aplikasi dibuka, layar utama akan menampilkan bottom navigation bar dengan dua tab: **First Screen** dan **Second Screen**.
2. **Navigasi ke First Screen**: Pada tab **First Screen**, terdapat tombol yang dapat diklik untuk memulai navigasi ke **FirstScreen**.
3. **Navigasi ke Second Screen**: Pada tab **Second Screen**, terdapat tombol yang dapat diklik untuk memulai navigasi ke **SecondScreen**.
4. **Tombol Kembali**: Ketika berada di **FirstScreen** atau **SecondScreen**, pengguna dapat menekan tombol "Go Back" untuk kembali ke layar utama dengan bottom navigation bar.


## Instalasi

1. Clone repositori ini atau unduh file proyeknya.
2. Buka direktori proyek dan jalankan perintah berikut untuk menginstal dependensi:

   ```bash
   flutter pub get

3. Jalankan aplikasi di emulator atau perangkat fisik:
    ```bash
   flutter run

