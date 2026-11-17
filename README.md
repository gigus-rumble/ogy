# SS.Coffee — Semija Sekisah

Repositori ini berisi paket proyek **SS.Coffee** berbasis Next.js, React, TypeScript, Tailwind CSS, dan MySQL (XAMPP).

## Paket kode sumber

Arsip lengkap proyek tersedia di [`SS-Coffee-source.tar.gz`](./SS-Coffee-source.tar.gz). Ekstrak arsip tersebut untuk mendapatkan folder `ss-coffee` beserta seluruh source code, komponen, halaman, API, script, dan database SQL.

## Menjalankan proyek

1. Ekstrak `SS-Coffee-source.tar.gz`.
2. Siapkan XAMPP dan hidupkan Apache serta MySQL.
3. Buka phpMyAdmin, lalu impor `ss-coffee/database/database.sql`.
4. Salin `ss-coffee/.env.example` menjadi `ss-coffee/.env.local`, lalu isi konfigurasi lokal dan password admin sendiri.
5. Di folder `ss-coffee`, jalankan `npm install`, `npm run create-admin`, kemudian `npm run dev`.
6. Buka `http://localhost:3000`.

## Keamanan

Jangan pernah mengunggah `.env.local`, password asli, token, atau API secret. Hanya template `.env.example` yang disertakan dalam paket.
