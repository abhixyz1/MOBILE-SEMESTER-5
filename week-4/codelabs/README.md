# LAPORAN TUGAS PRAKTIKUM CODELABS

## Praktikum 1: Membuat Project Flutter Baru

Membuat Project Flutter baru memanfaatkan terminal dengan command 
```bash
flutter create hello_world
```
![tampilan](images/00.png)

**Merubah `pubspec.yaml`**

![tampilan](images/01.png)

> File `pubspec.yaml` berfungsi sebagai konfigurasi utama project Flutter, di mana bagian terpenting adalah daftar dependencies yang menentukan paket-paket yang digunakan dalam aplikasi. Pada project ini, kode menambahkan `provider` untuk manajemen state dan `english_words` untuk menghasilkan kata acak, sehingga aplikasi dapat berjalan dengan fitur interaktif dan dinamis sesuai kebutuhan codelabs. Selain itu, bagian `flutter:` memastikan aplikasi menggunakan material design agar tampilan lebih modern dan konsisten.

**Merubah `analysis_options.yaml`**

```yaml
include: package:flutter_lints/flutter.yaml

linter:
  rules:
    avoid_print: false
    prefer_const_constructors_in_immutables: false
    prefer_const_constructors: false
    prefer_const_literals_to_create_immutables: false
    prefer_final_fields: false
    unnecessary_breaks: true
    use_key_in_widget_constructors: false
```
> File `analysis_options.yaml` digunakan untuk mengatur aturan linter pada project Flutter agar kode yang ditulis lebih konsisten dan mudah dipelihara. Pada bagian terpenting, file ini meng-include standar linter dari `flutter_lints` dan mengatur beberapa aturan khusus, seperti mengizinkan penggunaan `print`, mengatur preferensi penggunaan `const`, serta mengaktifkan atau menonaktifkan beberapa aturan lain sesuai kebutuhan pengembangan. Dengan konfigurasi ini, proses penulisan kode menjadi lebih fleksibel dan sesuai dengan gaya tim atau kebutuhan praktikum.

**Merubah `lib/main.dart` dan run mencoba project**

![tampilan](images/02.png)

> Kode pada `main.dart` membangun aplikasi Flutter yang menggunakan state management dengan `provider`, di mana bagian terpenting adalah pembuatan objek `MyAppState` yang menyimpan kata acak dari package `english_words`. Widget utama (`MyHomePage`) mengambil state tersebut dan menampilkan dua teks: label dan kata acak yang selalu berubah setiap aplikasi dijalankan. Highlight kode penting ada pada penggunaan `ChangeNotifierProvider` untuk membagikan state ke seluruh aplikasi, serta pemanggilan `WordPair.random()` untuk menghasilkan kata unik secara dinamis.

## Praktikum 2: Add a button

**First Hot Reload**

![tampilan](images/03.png)

**Adding a button**

![tampilan](images/04.png)

> Pada bagian ini, aplikasi menampilkan dua teks di layar: label "A random AWESOME idea:" dan kata acak yang diambil dari state, lalu menyediakan tombol "Next" yang jika ditekan akan menjalankan aksi (saat ini hanya mencetak pesan ke konsol). Dengan alur ini, pengguna dapat melihat ide kata acak dan berinteraksi melalui tombol, sehingga aplikasi terasa dinamis dan mudah dikembangkan untuk fitur selanjutnya.