import 'dart:io';

void main(List<String> args) {
  stdout.write("Masukkan angka: ");
  int angka = int.parse(stdin.readLineSync()!);

  if (cekPrima(angka)) {
    print("$angka adalah bilangan prima");
  } else {
    print("$angka bukan bilangan prima");
  }
}

bool cekPrima(int angka) {
  return true;
}
