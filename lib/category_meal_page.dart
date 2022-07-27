import 'package:flutter/material.dart';

class CategoryMealPage extends StatelessWidget {
  const CategoryMealPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final routeArgs = ModalRoute.of(context)?.settings.arguments
        as Map<String, String>; // take arguments from navigatorPushName

    final categoryTitle = routeArgs['title'];
    final categoryId = routeArgs['id'];
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle!),
        backgroundColor: Colors.teal[400],
      ),
      body: const Center(
        child: Text('Category meal'),
      ),
    );
  }
}
