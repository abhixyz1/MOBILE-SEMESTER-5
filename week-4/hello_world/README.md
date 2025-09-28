# LAPORAN JOBSHEET FLUTTER 1

## Praktikum 1: Membuat Project Flutter Baru

Membuat Project Flutter baru memanfaatkan terminal dengan command 
```bash
flutter create hello_world
```
![tampilan](images/01.png)

## Praktikum 2: Menghubungkan Perangkat Android atau Emulator

Mengaktifkan proses debug USB

![tampilan](images/02.png)

Menginstall Driver USB Google

![tampilan](images/03.png)

Menjalankan aplikasi di perangkat Android menggunakan kabel

![tampilan](images/04.png)

![tampilan](images/05.png)

![tampilan](images/06.png)

## Praktikum 3: Membuat Repository GitHub dan Laporan Praktikum

![tampilan](images/07.png)

Coba running project hello_world menggunakan emulator / browser / device lain dengan Teks yang ditampilkan dalam aplikasi adalah nama lengkap.

![tampilan](images/08.png)

## Praktikum 4: Menerapkan Widget Dasar

**Langkah 1: Text Widget**

![tampilan](images/09.png)

**Langkah 2: Image Widget**

![tampilan](images/10.png)

## Praktikum 5: Menerapkan Widget Material Design dan iOS Cupertino


**Langkah 1: Cupertino Button dan Loading Bar**

![tampilan](images/11.png)
> Kode pada `loading_cupertino.dart` berfungsi untuk menampilkan aplikasi Flutter sederhana yang menggunakan gaya iOS (Cupertino). Di dalamnya, terdapat sebuah tombol bergaya iOS (`CupertinoButton`) dan indikator loading (`CupertinoActivityIndicator`) yang diletakkan secara vertikal di tengah layar dengan latar belakang putih dan margin atas. Kode ini membungkus tampilan tersebut dalam sebuah aplikasi Flutter menggunakan `MaterialApp`, sehingga saat dijalankan, pengguna akan melihat tombol dan loading bar khas iOS di layar aplikasi.

**Langkah 2: Floating Action Button (FAB)**

![tampilan](images/12.png)
> Kode pada `floating_action_button.dart` membuat aplikasi sederhana yang menampilkan sebuah tombol melayang (`FloatingActionButton`) berikon jempol berwarna pink di pojok kanan bawah yang siap menjalankan aksi saat ditekan (callback `onPressed` saat ini kosong, bisa diisi mis. untuk menampilkan Snackbar atau fungsi lain).

**Langkah 3: Scaffold Widget**

![tampilan](images/13.png)

> Kode pada `main.dart` berfungsi sebagai aplikasi Flutter sederhana yang menampilkan angka di tengah layar, di mana setiap kali tombol melayang (FloatingActionButton) berikon tambah ditekan, angka tersebut akan bertambah satu.