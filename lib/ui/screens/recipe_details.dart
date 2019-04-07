import 'package:flutter/material.dart';

import 'package:flutter_recipes_app/model/Recipe.dart';

class RecipeDetails extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final Recipe recipe = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      body: Center(
        child: Text(recipe.name),
      ),
    );
  }
}