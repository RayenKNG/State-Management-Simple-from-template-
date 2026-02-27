import 'package:flutter/material.dart';
import 'package:provider/provider.dart'; // Import Provider
import 'models/counter_model.dart'; // Import Model/Otak
import 'views/home_page.dart'; // Import UI/Tampilan

void main() {
  runApp(
    // Taruh pemancar sinyal (Provider) di posisi paling atas aplikasi
    ChangeNotifierProvider(
      create: (context) => CounterModel(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // Manggil halaman utama
      home: const MyHomePage(title: 'State Management Simple'),
    );
  }
}
