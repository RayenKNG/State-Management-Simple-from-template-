import 'package:flutter/material.dart';
import 'package:provider/provider.dart'; // Import Provider
import 'models/counter_model.dart'; // Import Model
import 'views/home_page.dart'; // Import Tampilan

void main() {
  runApp(
    // ChangeNotifierProvider ditaruh di paling atas biar semua halaman bisa akses datanya
    ChangeNotifierProvider<CounterModel>(
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
      home: const MyHomePage(title: 'State Management Simple'),
    );
  }
}
