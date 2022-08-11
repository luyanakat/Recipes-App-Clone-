import 'package:flutter/material.dart';

import '../widgets/dummy_data.dart';

class MealDetailPage extends StatelessWidget {
  const MealDetailPage({Key? key}) : super(key: key);

  Widget buildSectionTitle(BuildContext context, String title) {
    return Container(
      margin: const EdgeInsets.all(8),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 20,
          fontFamily: 'RaleWay',
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget buildContainer(Widget child) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
      decoration: BoxDecoration(
        color: Colors.yellow[100],
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(15),
      ),
      child: SizedBox(
        height: 130,
        child: child,
      ),
    );
  }

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
            buildSectionTitle(context, 'Ingredients'),
            buildContainer(
              //child of buildContainer is listView
              ListView.builder(
                itemBuilder: ((context, index) {
                  return Column(
                    children: [
                      ListTile(
                        leading: const Text('+'),
                        title: Text(selectedMeal.ingredients[index]),
                      ),
                    ],
                  );
                }),
                itemCount: selectedMeal.ingredients.length,
              ),
            ),
            buildSectionTitle(context, 'Steps'),
            buildContainer(
              ListView.builder(
                itemBuilder: ((context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Column(
                      children: [
                        ListTile(
                          leading: CircleAvatar(child: Text('#${index + 1}')),
                          title: Text(selectedMeal.steps[index]),
                        ),
                        const Divider(thickness: 1),
                      ],
                    ),
                  );
                }),
                itemCount: selectedMeal.steps.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
