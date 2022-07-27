import 'package:flutter/material.dart';

import './category_item.dart';
import './dummy_data.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color(0xffECEFF4),
      appBar: AppBar(
        title: const Text('Recipes App'),
        backgroundColor: Colors.teal[300],
      ),
      body: GridView(
        padding: const EdgeInsets.all(16),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 20,
        ),
        children: [
          ...DUMMY_CATEGORIES.map((e) {
            return CategoryItem(e.color, e.title);
          }).toList(),
        ],
      ),
    );
  }
}
