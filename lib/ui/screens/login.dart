import 'package:flutter/material.dart';

import 'package:flutter_recipes_app/ui/widgets/google_sign_in_button.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body: Container(
        decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/kitchen-background.jpg"), fit: BoxFit.cover)),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Recipes', style: Theme.of(context).textTheme.headline, textAlign: TextAlign.center),
              //space between 'Recipes' and the button:
              SizedBox(height: 50.0),
              GoogleSignInButton(onPressed: ()=>print("Button pressed."),),
            ],
          ),
        ),
      ),
    );
  }
}