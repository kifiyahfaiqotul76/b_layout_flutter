import 'package:flutter/material.dart';
import 'pages/home_pages.dart';
import 'pages/item_pages.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // hilangkan tulisan DEBUG
      title: 'Aplikasi Belanja',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),     // HomePage
        '/item': (context) => const ItemPage(), // ItemPage
      },
    );
  }
}
