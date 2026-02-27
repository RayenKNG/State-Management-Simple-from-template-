import 'package:flutter/material.dart';

// Tambahkan "extends ChangeNotifier" biar class ini bisa jadi Provider
class CounterModel extends ChangeNotifier {
  // Variabel private (ada garis bawahnya) buat nyimpen data angka
  int _angka = 0;

  // 'Getter' buat ngambil nilai _angka supaya bisa dibaca sama UI (tampilan layar)
  int get angka => _angka;

  // Fungsi buat nambahin angka +1
  void increment() {
    _angka++;
    notifyListeners(); // Wajib ada! Ini yang ngasih tau UI "Woy data berubah, update layarnya!"
  }

  // Fungsi buat ngurangin angka -1 (Jawaban Latihan PDF)
  void decrement() {
    _angka--;
    notifyListeners(); // Kasih tau UI juga kalau angkanya berkurang
  }
}
