import 'package:flutter/material.dart';

import 'package:flutter_recipes_app/ui/screens/login.dart';
import 'package:flutter_recipes_app/ui/screens/home.dart';
import 'package:flutter_recipes_app/ui/screens/recipe_details.dart';
import 'package:flutter_recipes_app/ui/theme.dart';


class RecipesApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: buildTheme(),
      initialRoute: '/login',
      routes: {
        '/': (context) => HomeScreen(),
        '/login': (context) => LoginScreen(),
        '/recipeDetail': (context) => RecipeDetails(),
      },
    );
  }
}