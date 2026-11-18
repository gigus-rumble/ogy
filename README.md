# SS.Coffee — Semija Sekisah

Repositori GitHub proyek **SS.Coffee**. Halaman statis beridentitas SS.Coffee sudah disiapkan di folder `docs`.

## GitHub Pages

Aktifkan website melalui langkah berikut:

1. Buka **Settings → Pages**.
2. Pada **Build and deployment**, pilih **Deploy from a branch**.
3. Pilih branch **main** dan folder **/docs**.
4. Klik **Save**.

Alamat Pages proyek ini setelah GitHub Pages aktif:

**https://gigus-rumble.github.io/ogy/**

## Source code aplikasi

Paket source code lengkap SS.Coffee tersedia sebagai arsip pada lampiran percakapan ini. Arsip tersebut belum berhasil diimpor utuh ke repositori ini.

Untuk memasukkannya lewat GitHub:
1. Unduh arsip source code dari lampiran percakapan.
2. Ekstrak arsip di komputer.
3. Buka repositori ini, pilih **Add file → Upload files**.
4. Unggah isi folder proyek `ss-coffee` ke root repositori, kemudian klik **Commit changes**.

## Menjalankan aplikasi full-stack

Aplikasi toko menggunakan Next.js, API backend, dan MySQL. Siapkan Node.js 22.12 atau lebih baru dan MySQL (misalnya melalui XAMPP). Impor `database/database.sql` melalui phpMyAdmin, salin `.env.example` menjadi `.env.local`, lalu isi konfigurasi lokal. Jalankan `npm install` dan `npm run dev` di folder aplikasi.

**Catatan hosting:** GitHub Pages hanya mendukung halaman statis. Landing page SS.Coffee dapat dipublikasikan di Pages, tetapi aplikasi toko yang memerlukan API dan database MySQL harus dijalankan di hosting yang mendukung Node.js dan MySQL.

## Keamanan

Jangan pernah mengunggah `.env.local`, password asli, token, atau API secret. Hanya template `.env.example` yang boleh dibagikan.
