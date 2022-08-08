import 'package:flutter/material.dart';

import '../widgets/dummy_data.dart';
import '../widgets/meal_item.dart';

class CategoryMealPage extends StatelessWidget {
  const CategoryMealPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final routeArgs = ModalRoute.of(context)?.settings.arguments
        as Map<String, String>; // take arguments from navigatorPushName

    final categoryTitle = routeArgs['title'];
    final categoryId = routeArgs['id'];

    final categoryMeals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(categoryId);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle!),
        backgroundColor: Colors.teal[400],
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return MealItem(
              categoryMeals[index].title,
              categoryMeals[index].imageUrl,
              categoryMeals[index].duration,
              categoryMeals[index].complexity,
              categoryMeals[index].affordability);
        },
        itemCount: categoryMeals.length,
      ),
    );
  }
}
