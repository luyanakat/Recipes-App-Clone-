import 'dart:ui';

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
      theme: ThemeData(
        primarySwatch: Colors.teal,
        canvasColor: const Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
              titleMedium: const TextStyle(
                  fontFamily: 'RobotoCondensed',
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
      ),
      home: const CategoriesPage(),
    );
  }
}
