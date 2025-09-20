import 'dart:io';

void main() {
  stdout.write("Masukkan jumlah angka yang ingin dicek: ");
  int n = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < n; i++) {
    stdout.write("Masukkan angka ke-${i + 1}: ");
    int angka = int.parse(stdin.readLineSync()!);

    if (cekPrima(angka)) {
      print("$angka adalah bilangan prima");
    } else {
      print("$angka bukan bilangan prima");
    }
  }
}

bool cekPrima(int angka) {
  if (angka < 2) return false;

  for (int i = 2; i <= angka ~/ 2; i++) {
    if (angka % i == 0) {
      return false;
    }
  }
  return true;
}
