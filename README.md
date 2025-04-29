# Tugas Kelompok Confidence Interval

## Soal: Uji Kepuasan Pelanggan E-Commerce

Sebuah perusahaan e-commerce baru saja meluncurkan platform belanja online yang diklaim dapat memberikan kepuasan pelanggan dengan skor minimal 80 dari 100.  
Untuk menguji klaim tersebut, tim quality control melakukan survei terhadap 60 pelanggan yang menggunakan platform ini dalam kondisi penggunaan normal.

Hasil survei menunjukkan bahwa rata-rata skor kepuasan pelanggan adalah 83,  
dan berdasarkan data survei sebelumnya, standar deviasi populasi skor kepuasan diketahui sebesar 10.

- Hitunglah Confidence Interval 95% untuk rata-rata skor kepuasan pelanggan pada platform e-commerce ini.

- Apakah hasil survei tersebut mendukung klaim perusahaan bahwa skor kepuasan pelanggan minimal adalah 80?  
   Jelaskan secara kuantitatif dan logis.

---

## Penjelasan Kode:

- **Parameter:**  
  - `mean_sample`: Rata-rata skor kepuasan pelanggan dari sampel (83).  
  - `sd_pop`: Standar deviasi populasi skor kepuasan (10).  
  - `n`: Ukuran sampel (60).  
  - `z_score`: Nilai z-score untuk confidence level 95% (1.96).

- **Hitung Standard Error dan Confidence Interval:**  
  - SE = σ / sqrt(n) dihitung sebagai standard error.  
  - ME = z * SE adalah margin of error.

- **Batas bawah dan atas confidence interval dihitung dengan:**  
  - `lower_bound = mean_sample - ME`  
  - `upper_bound = mean_sample + ME`

- **Tampilkan hasil Confidence Interval:**  
  - Menampilkan interval kepercayaan dengan dua digit desimal.

- **Evaluasi klaim perusahaan:**  
  - Memeriksa apakah nilai klaim minimum (80) berada dalam confidence interval;  
  - jika ya maka klaim didukung data.

- **Visualisasi distribusi normal dan Confidence Interval:**  
  - Membuat grafik distribusi normal dengan garis rata-rata sampel biru putus-putus;  
  - batas bawah/atas CI hijau putus-putus; garis merah menunjukkan klaim perusahaan.