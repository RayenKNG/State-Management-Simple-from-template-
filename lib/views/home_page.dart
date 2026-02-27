import 'package:flutter/material.dart';
import 'package:provider/provider.dart'; // Import Provider
import '../models/counter_model.dart'; // Import Model (pakai ../ karena beda folder)

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // Scaffold dibungkus Consumer biar layarnya ngedengerin perubahan dari CounterModel
    return Counter<CounterModel>(
      builder: (context, value, child) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            title: Text(widget.title),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text('Angka saat ini:'),
                Text(
                  value.angka.toString(), // Ngambil angka dari Provider
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ],
            ),
          ),
          // Bikin 2 tombol (Tambah dan Kurang)
          floatingActionButton: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FloatingActionButton(
                onPressed: () {
                  value.decrement(); // Panggil fungsi kurang
                },
                tooltip: 'Kurang',
                child: const Icon(Icons.remove),
              ),
              const SizedBox(width: 10), // Jarak antar tombol
              FloatingActionButton(
                onPressed: () {
                  value.increment(); // Panggil fungsi tambah
                },
                tooltip: 'Tambah',
                child: const Icon(Icons.add),
              ),
            ],
          ),
        );
      },
    );
  }
}