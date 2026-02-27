import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

// ChangeNotifier bikin class ini bisa ngasih tau UI kalau ada perubahan data
class CounterModel extends ChangeNotifier {
  int _angka = 0; // Datanya private

  // Cara UI ngambil datanya
  int get angka => _angka;

  // Fungsi Tambah
  void increment() {
    _angka++;
    notifyListeners(); // Wajib ada! Ini yang ngasih tau UI "Woy data berubah, update layarnya!"
  }

  // Jawaban Latihan No 2: Fungsi Kurang
  void decrement() {
    _angka--;
    notifyListeners();
  }
}
