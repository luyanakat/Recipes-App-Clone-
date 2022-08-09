import 'package:flutter/material.dart';

import '../widgets/dummy_data.dart';

class MealDetailPage extends StatelessWidget {
  const MealDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context)?.settings.arguments as String;

    final selectedMeal = DUMMY_MEALS.firstWhere((meal) {
      return meal.id == mealId;
    });

    return Scaffold(
      appBar: AppBar(
        title: Text(selectedMeal.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.network(
                selectedMeal.imageUrl,
                scale: 3 / 2,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
