import 'package:flutter/material.dart';

import '../widgets/dummy_data.dart';

class MealDetailPage extends StatelessWidget {
  const MealDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context)?.settings.arguments as String;

    final selectedMeal = DUMMY_MEALS.firstWhere((meal) => meal.id == mealId);

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
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              child: const Text(
                'Ingredients',
                style: TextStyle(fontSize: 20, fontFamily: 'RaleWay'),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              height: 300,
              child: ListView.builder(
                itemBuilder: ((context, index) {
                  return Card(
                    child: Text(selectedMeal.ingredients[index]),
                  );
                },),
                itemCount: selectedMeal.ingredients.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
