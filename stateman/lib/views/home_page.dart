import 'package:flutter/material.dart';
// 1. Lakukan import library provider (Sesuai instruksi PDF)
import 'package:provider/provider.dart';
// 2. Import model yang udah kita bikin
import '../models/counter_model.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // 3. Rubah Builder menjadi Consumer<CounterModel>
    return Consumer<CounterModel>(
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
                // 4. Rubah tampilan text counter ngambil dari Provider
                Text(
                  value.angka.toString(),
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ],
            ),
          ),
          // 5. Rubah FloatingActionButton dan tambahkan tombol Kurang (Latihan Akhir)
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
