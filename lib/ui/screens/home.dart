import 'package:flutter/material.dart';

import 'package:flutter_recipes_app/model/Recipe.dart';
import 'package:flutter_recipes_app/utils/store.dart';
import 'package:flutter_recipes_app/ui/widgets/recipe_card.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  List<Recipe> recipes = getRecipes();
  List<String> userFavs = getFavoritesIDs();

  void _handleFavoritesListChanges(String recipeID) {
    setState(() {
      if (userFavs.contains(recipeID)) {
        userFavs.remove(recipeID);
      } else {
        userFavs.add(recipeID);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    Column _buildRecipes(List<Recipe> recipeList) {
      return Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              itemCount: recipeList.length,
              itemBuilder: (BuildContext context, int index) {
                return RecipeCard(
                  recipe: recipeList[index],
                  inFavorites: userFavs.contains(recipeList[index].id),
                  onFavoriteButtonPressed: _handleFavoritesListChanges,
                );
              }
            ),
          )
        ],
      );
    }

    double _iconSize = 20.0;

    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(50.0),
          child: AppBar(
            backgroundColor: Colors.white,
            elevation: 2.0,
            bottom: TabBar(
              labelColor: Theme.of(context).indicatorColor,
              tabs: [
                Tab(icon: Icon(Icons.restaurant, size: _iconSize)),
                Tab(icon: Icon(Icons.local_drink, size: _iconSize)),
                Tab(icon: Icon(Icons.favorite, size: _iconSize)),
                Tab(icon: Icon(Icons.settings, size: _iconSize)),
              ]
            ),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(5.0),
          child: TabBarView(children: [
            _buildRecipes(recipes
              .where((recipe) => recipe.type == RecipeType.food)
              .toList()),
            _buildRecipes(recipes
                .where((recipe) => recipe.type == RecipeType.drink)
                .toList()),
            _buildRecipes(recipes
                .where((recipe) => userFavs.contains(recipe.id))
                .toList()),
            Center(child: Icon(Icons.settings)),
          ]),
        ),
      ),
    );
  }
}