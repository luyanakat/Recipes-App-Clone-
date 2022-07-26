import 'package:flutter/material.dart';

import './screens/tabs_page.dart';
import './screens/category_meal_page.dart';
import './screens/categories_page.dart';
import './screens/meal_detail_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
      home: const TabScreen(),
      routes: {
        '/categories-meals': (context) => const CategoryMealPage(),
        '/meals-detail': (context) => const MealDetailPage(),
      },
    );
  }
}
