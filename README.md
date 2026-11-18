# SS.Coffee — Semija Sekisah

Repositori proyek website coffee shop **SS.Coffee**. Source code lengkap dibundel dalam arsip di root repositori.

## Source code

- Arsip lengkap: [SS-Coffee-source.tar.gz](./SS-Coffee-source.tar.gz)
- Jika arsip belum terbentuk oleh GitHub Actions, jalankan `.RESTORE-SOURCE.ps1` di Windows PowerShell untuk merakit tujuh bagian yang ada di folder `source-parts`.

## Teknologi dan kebutuhan

- Next.js App Router, React, TypeScript, Tailwind CSS
- MySQL lokal melalui XAMPP dan phpMyAdmin
- Node.js 22.12 atau lebih baru

## Menjalankan aplikasi full-stack

1. Ekstrak `SS-Coffee-source.tar.gz` (atau jalankan `RESTORE-SOURCE.ps1` terlebih dahulu).
2. Jalankan Apache dan MySQL di XAMPP.
3. Buka phpMyAdmin, lalu impor `ss-coffee/database/database.sql`.
4. Salin `ss-coffee/.env.example` menjadi `ss-coffee/.env.local`, lalu isi konfigurasi MySQL lokal dan secret sendiri.
5. Dari folder `ss-coffee`, jalankan `npm install`, `npm run create-admin`, lalu `npm run dev`.
6. Buka `http://localhost:3000`.

**Catatan:** GitHub Pages hanya meng-host halaman statis di folder `docs`. Aplikasi toko Next.js yang memakai API dan MySQL tidak dapat berjalan penuh di GitHub Pages; aplikasi utama perlu dijalankan pada server yang mendukung Node.js dan MySQL.

## GitHub Pages

Setelah memilih **Settings → Pages → Deploy from a branch**, atur Branch `main` dan folder `/docs`, lalu tekan **Save**. Halaman statis SS.Coffee akan tersedia di:

https://gigus-rumble.github.io/ogy/

## Keamanan

Jangan mengunggah `.env.local`, password asli, token, atau API secret. Gunakan `.env.example` sebagai template konfigurasi lokal.
