import 'package:flutter/material.dart';
import 'go_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router, // Menggunakan konfigurasi rute dari go_router.dart
      title: 'Marketplace',
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}
