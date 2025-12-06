import 'package:flutter/material.dart';
import 'my_portfolio.dart';
void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyPortfolioApp(),
      debugShowCheckedModeBanner: false,
    );
  }
}
