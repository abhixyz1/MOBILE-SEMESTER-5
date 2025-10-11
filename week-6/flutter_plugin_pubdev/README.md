# Praktikum Menerapkan Plugin di Project Flutter

**Langkah 1: Buat Project Baru**

Membuat Project Flutter baru memanfaatkan terminal dengan command 
```bash
flutter create  flutter_plugin_pubdev
```

![tampilan](images/00.png)

**Langkah 2: Menambahkan Plugin**

Menambahkan plugin
```bash
flutter pub add auto_size_text
```

![tampilan](images/01.png)

pada `pubspec.yaml` berubah kodenya menjadi

![tampilan](images/02.png)

**Langkah 3: Buat file red_text_widget.dart**

Membuat file baru bernama `red_text_widget.dart`

![tampilan](images/03.png)

**Langkah 4: Tambah Widget AutoSizeText**

Modifikasi pada `red_text_widget.dart`

```dart
return AutoSizeText(
      text,
      style: const TextStyle(color: Colors.red, fontSize: 14),
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
);
```

**Langkah 5: Buat Variabel text dan parameter di constructor**

![tampilan](images/04.png)

**Langkah 6: Tambahkan widget di main.dart**

![tampilan](images/05.png)

> Pada perubahan terakhir, telah mencoba membuat custom widget bernama **RedTextWidget** yang memanfaatkan plugin `auto_size_text` dari pub.dev. Widget ini digunakan untuk menampilkan teks berwarna merah yang otomatis menyesuaikan ukuran font agar tetap muat dalam dua baris, dengan overflow berupa ellipsis jika terlalu panjang. RedTextWidget kemudian digunakan di halaman utama aplikasi, berdampingan dengan widget `Text` biasa, sehingga pengguna dapat membandingkan tampilan dan perilaku keduanya. Selain itu, struktur kode tetap mengikuti pola Flutter standar dengan penggunaan `StatefulWidget` untuk counter dan penempatan widget custom di dalam widget tree. Perubahan ini membuat aplikasi lebih modular, mudah dikembangkan, dan memperlihatkan pemanfaatan plugin eksternal untuk kebutuhan UI khusus.

# Tugas Praktikum

**1. Jelaskan maksud dari langkah 2 pada praktikum tersebut!**

> Maksud dari menambahkan plugin dengan perintah `flutter pub add auto_size_text` adalah untuk memasukkan library eksternal bernama **auto_size_text** ke dalam project Flutter. Plugin ini digunakan agar teks pada aplikasi bisa otomatis menyesuaikan ukuran font-nya supaya tetap muat di dalam batas lebar atau jumlah baris tertentu, tanpa terpotong atau keluar dari layout. Dengan plugin ini, maka bisa membuat tampilan teks yang lebih fleksibel dan responsif, terutama jika ada teks yang panjang atau tampilan yang dinamis.

**2. Jelaskan maksud dari langkah 5 pada praktikum tersebut!** 

> Maksud dari `final String text;` adalah untuk mendeklarasikan sebuah variabel di dalam widget yang akan menyimpan nilai teks yang ingin ditampilkan. Sedangkan `const RedTextWidget({Key? key, required this.text}) : super(key: key);` adalah konstruktor widget yang mewajibkan kita mengisi nilai `text` saat membuat RedTextWidget. Dengan cara ini, setiap kali menggunakan RedTextWidget, maka bisa menentukan sendiri teks apa yang ingin ditampilkan, sehingga widget ini menjadi fleksibel dan mudah digunakan di berbagai tempat dalam aplikasi.

**3. Pada langkah 6 terdapat dua widget yang ditambahkan, jelaskan fungsi dan perbedaannya!**

> Potongan kode tersebut berisi dua buah `Container` yang masing-masing membungkus widget teks. Container pertama menggunakan widget custom `RedTextWidget` (yang menampilkan teks berwarna merah dan otomatis menyesuaikan ukuran font), dengan latar belakang kuning dan lebar 50 piksel. Container kedua menggunakan widget `Text` biasa, dengan latar belakang hijau muda dan lebar 100 piksel. Keduanya menampilkan pesan yang sama. Tujuannya adalah agar bisa melihat perbedaan tampilan dan perilaku antara teks biasa dan teks yang menggunakan plugin `auto_size_text` secara berdampingan, sehingga lebih mudah memahami manfaat penggunaan plugin tersebut dalam aplikasi Flutter.

**4. Jelaskan maksud dari tiap parameter yang ada di dalam plugin auto_size_text berdasarkan tautan pada dokumentasi [disini](https://pub.dev/documentation/auto_size_text/latest/)** */

>
> - **key**: Digunakan untuk mengidentifikasi widget di dalam tree Flutter, biasanya untuk keperluan update atau animasi.
> - **textKey**: Memberikan key khusus untuk widget teks yang dihasilkan, berguna jika ingin mengakses atau mengatur widget teks secara spesifik.
> - **style**: Untuk mengatur tampilan teks, seperti warna, ukuran, dan jenis font.
> - **minFontSize**: Ukuran font terkecil yang boleh digunakan saat teks otomatis diperkecil agar tetap muat.
> - **maxFontSize**: Ukuran font terbesar yang boleh digunakan saat teks otomatis diperbesar.
> - **stepGranularity**: Mengatur seberapa besar perubahan ukuran font setiap kali teks menyesuaikan diri.
> - **presetFontSizes**: Daftar ukuran font yang sudah ditentukan, sehingga teks hanya akan memilih dari ukuran-ukuran ini.
> - **group**: Untuk menyamakan ukuran beberapa AutoSizeText sekaligus, agar konsisten di beberapa tempat.
> - **textAlign**: Mengatur posisi teks secara horizontal, misal rata kiri, tengah, atau kanan.
> - **textDirection**: Mengatur arah penulisan teks, misal dari kiri ke kanan (seperti bahasa Indonesia/Inggris) atau kanan ke kiri (seperti Arab).
> - **locale**: Mengatur lokal/region untuk memilih font yang sesuai karakter tertentu.
> - **softWrap**: Menentukan apakah teks boleh pindah baris secara otomatis jika terlalu panjang.
> - **wrapWords**: Mengatur apakah kata yang terlalu panjang boleh dipotong dan dipindah ke baris berikutnya.
> - **overflow**: Mengatur apa yang terjadi jika teks terlalu panjang, misal dipotong dengan tanda titik-titik (...).
> - **overflowReplacement**: Widget pengganti yang akan ditampilkan jika teks tidak muat.
> - **textScaleFactor**: Mengatur skala ukuran font, biasanya mengikuti pengaturan aksesibilitas di perangkat.
> - **maxLines**: Jumlah baris maksimal yang boleh digunakan untuk menampilkan teks.
> - **semanticsLabel**: Label alternatif untuk kebutuhan aksesibilitas, seperti pembaca layar.
