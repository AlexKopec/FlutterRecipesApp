import 'package:flutter/material.dart';

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
              Text('Recipes', textAlign: TextAlign.center),
              //space between 'Recipes' and the button:
              SizedBox(height: 50.0),
              MaterialButton(
                color: Colors.white,
                child: Text("Sign in with Google"),
                onPressed: () => print("Button pressed."),
              )
            ],
          ),
        ),
      ),
    );
  }
}