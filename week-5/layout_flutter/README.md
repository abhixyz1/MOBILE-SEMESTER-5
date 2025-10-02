# LAPORAN JOBSHEET FLUTTER 2

## Praktikum 1: Membangun Layout di Flutter

**Langkah 1: Buat Project Baru**
Membuat Project Flutter baru memanfaatkan terminal dengan command 
```bash
flutter create layout_flutter
```

![tampilan](images/00.png)

**Langkah 2: Buka file lib/main.dart**

```dart
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter layout: Muhammad Abhinaya Zurfa | 2341760186',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: const Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}
```

![tampilan](images/01.png)

**Langkah 4: Implementasi title row**

![tampilan](images/02.png)
> Pada bagian ini, kode membangun layout horizontal berisi informasi wisata dengan tiga poin utama:  
> **(1)** Mengatur posisi teks judul dan subjudul ke kiri menggunakan `crossAxisAlignment: CrossAxisAlignment.start` pada widget `Column`,  
> **(2)** Memberikan jarak bawah pada judul dan menampilkan subjudul dengan warna abu-abu agar tampilan lebih rapi dan informatif,  
> **(3)** Menambahkan ikon bintang berwarna merah dan angka "41" di sebelah kanan untuk menunjukkan rating atau jumlah favorit, sehingga keseluruhan tampilan menjadi lebih menarik dan mudah dipahami oleh pengguna.