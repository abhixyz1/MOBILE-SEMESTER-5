# Praktikum APLIKASI OCR SEDERHANA DENGAN FLUTTER

**Langkah 1: Buat Project Baru**

Membuat Project Flutter baru memanfaatkan terminal dengan command 
```bash
flutter create ocr_sederhana
```

![tampilan](images/00.png)

**Langkah 2: Menambahkan Plugin**

Menambahkan kode pada `pubspec.yaml`
```yaml
  google _ mlkit _ text _ recognition : ˆ0.10.0
  camera : ˆ0.10.5+5
  path _ provider : ˆ2.1.2
  path : ˆ1.8.3
  ```

dan jalankan
```bash
flutter pub get
````


![tampilan](images/02.png)

**Langkah 3: Tambahkan Izin Kamera (Android)**

pada `AndroidManifest.xml`
```xml
<uses - permission android:name =" android . permission . CAMERA " />
```

![tampilan](images/03.png)

**Langkah 4: Buat Struktur Folder**

![tampilan](images/01.png)

**Langkah 5: Kode Program**

Menambahkan kode pada File `lib/main.dart`

![tampilan](images/04.png)

`lib/screens/home_screen.dart`

![tampilan](images/05.png)

`lib/screens/result_screen.dart`

![tampilan](images/06.png)

`lib/screens/scan_screen.dart`

![tampilan](images/07.png)

`lib/screens/splash screen.dart`

![tampilan](images/08.png)

