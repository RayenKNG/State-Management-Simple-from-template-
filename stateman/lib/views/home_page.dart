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
    // Sesuai PDF, bungkus Scaffold menggunakan Builder
    return Builder(
      builder: (context) {
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
                  '0', // Nanti ini kita ubah di step selanjutnya
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ],
            ),
          ),
          // Nanti tombol kita tambahin di sini
        );
      },
    );
  }
}
