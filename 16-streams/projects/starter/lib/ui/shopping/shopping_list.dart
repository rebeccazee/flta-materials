import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../data/memory_repository.dart';

class ShoppingList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<MemoryRepository>(builder: (context, repository, child) {
      final ingredients = repository.findAllIngredients() ?? List();
      return ListView.builder(
          itemCount: ingredients.length,
          itemBuilder: (BuildContext context, int index) {
            return CheckboxListTile(
              value: false,
              title: Text(ingredients[index].name),
              onChanged: (newValue) {},
            );
          });
    });
  }
}
