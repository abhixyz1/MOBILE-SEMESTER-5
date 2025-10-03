# LAPORAN JOBSHEET FLUTTER 2

## Praktikum 5: Membangun Navigasi di Flutter

**Langkah 1: Buat Project Baru**

Membuat Project Flutter baru memanfaatkan terminal dengan command 
```bash
flutter create belanja
```

![tampilan](images/00.png)

**Langkah 2: Mendefinisikan Route**

`home_page.dart` diisi kode
```dart
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    throw UnimplementedError();
  }
}
```

`item_page.dart` diisi kode
```dart
class ItemPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    throw UnimplementedError();
  }
}
```

**Langkah 3: Lengkapi Kode di main.dart**

Pada `main.dart` tambahkan kode
```dart
void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => HomePage(),
      '/item': (context) => ItemPage(),
    },
  )); // MaterialApp
}
```

>Untuk mendefinisikan navigasi antar halaman

**Langkah 4: Membuat data model**

Membuat folder baru bernama models dan menambahkan file baru `item.dart`

```dart
class Item {
  String name;
  int price;

  Item({required this.name, required this.price});
}
```

> Class `Item` adalah data model sederhana yang digunakan untuk merepresentasikan sebuah barang dengan dua properti utama, yaitu `name` (nama barang) dan `price` (harga barang). Keduanya bertipe data non-nullable dan wajib diisi melalui konstruktor dengan parameter `required`, sehingga setiap objek `Item` yang dibuat pasti memiliki nama dan harga yang valid sesuai kebutuhan aplikasi.