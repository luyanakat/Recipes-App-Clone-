import 'package:flutter/material.dart';

class CategoryMealPage extends StatelessWidget {
  const CategoryMealPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Meals Recipes Example')),
      body: const Center(
        child: Text('Category meal'),
      ),
    );
  }
}
