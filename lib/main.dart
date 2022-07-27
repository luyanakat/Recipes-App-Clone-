import 'package:flutter/material.dart';

import './categories_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meal App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const CategoriesPage(),
    );
  }
}
