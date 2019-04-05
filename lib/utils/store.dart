import 'package:flutter_recipes_app/model/Recipe.dart';

List<Recipe> getRecipes() {
  return [
    Recipe(
      id: '0',
      type: RecipeType.food,
      name: 'Recovery Shake',
      duration: Duration(minutes: 10),
      ingredients: [
        'Tropical Frozen Fruit',
        'Almonds',
        'Oats',
        'Protein Powder',
        'Almond Milk',
        'Yogurt',
      ],
      preparation: [
        'Step 1:',
        'Step 2:',
        'Step 3:',
      ],
      imageURL: 'https://images.unsplash.com/photo-1505576540771-be91e4753e0f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
    ),
    Recipe(
      id: '1',
      type: RecipeType.food,
      name: 'Soy Glazed Salmon',
      duration: Duration(minutes: 20),
      ingredients: [
        'Salmon',
        'Sweet Soy Sauce',
        'Fish Sauce',
        'Oyster Sauce',
        'Garlic',
        'Chili Paste',
      ],
      preparation: [
        'Step 1:',
        'Step 2:',
        'Step 3:',
      ],
      imageURL: 'https://images.unsplash.com/photo-1519708227418-c8fd9a32b7a2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80',
    ),
    Recipe(
      id: '2',
      type: RecipeType.drink,
      name: 'Strawberry Juice',
      duration: Duration(minutes: 10),
      ingredients: [
        '100g of strawberries',
        '500ml of water',
        '2 teaspoons of sugar',
        'Juice of half a lemon',
      ],
      preparation: [
        'Step 1',
        'Step 2',
        'Step 3',
      ],
      imageURL:
      'https://images.unsplash.com/photo-1506802913710-40e2e66339c9?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=c8ffc5bbb3719b5a46ee703acb0a0ac5&auto=format&fit=crop&w=634&q=80',
    ),
    Recipe(
      id: '3',
      type: RecipeType.drink,
      name: 'Blueberry Smoothie',
      duration: Duration(minutes: 10),
      ingredients: [
        '100g of fresh blueberries',
        '200g of plain yoghurt',
        '100g of milk',
        '1 banana',
      ],
      preparation: [
        'Step 1',
        'Step 2',
        'Step 3',
      ],
      imageURL:
      'https://images.unsplash.com/photo-1532301791573-4e6ce86a085f?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=c0d9fe8ce9033db3a46ddf00bba92240&auto=format&fit=crop&w=1050&q=80',
    ),
  ];
}

List<String> getFavoritesIDs() {
  return [
    '0',
    '1',
    '3',
  ];
}