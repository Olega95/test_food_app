import 'package:flutter/material.dart';
import 'package:test_food_app/utils/theme.dart';

void main() {
  runApp(const TestFoodApp());
}

class TestFoodApp extends StatelessWidget {
  const TestFoodApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test Food App',
      theme: AppTheme.light,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Категории'),
      ),
      body: Container(),
    );
  }
}
