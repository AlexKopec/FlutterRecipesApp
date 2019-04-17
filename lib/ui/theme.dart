import 'package:flutter/material.dart';

ThemeData buildTheme() {
  // All our font styles in this method
  TextTheme _buildTextTheme(TextTheme base) {
    return base.copyWith(
      headline: base.headline.copyWith(
        fontFamily: 'Merriweather',
        fontSize: 40.0,
        color: const Color.fromRGBO(0, 0, 0, 1),
      ),
      title: base.title.copyWith(
        fontFamily: 'Merriweather',
        fontSize: 15.0,
        color: const Color.fromRGBO(0, 0, 0, 1),
      ),
      caption: base.caption.copyWith(
        color: const Color.fromRGBO(240, 95, 64, 1),
      ),
    );
  }

  // Override a default blue theme
  final ThemeData base = ThemeData.light();

  return base.copyWith(
    textTheme: _buildTextTheme(base.textTheme),
    primaryColor: const Color.fromRGBO(240, 95, 64, 1),
    indicatorColor:  const Color.fromRGBO(31, 189, 41, 1),
    scaffoldBackgroundColor: const Color(0xFFF5F5F5),
    accentColor: const Color(0xFFFFF8E1),
    iconTheme: IconThemeData(
      color: const Color.fromRGBO(240, 95, 64, 1),
      size: 20.0
    ),
    buttonColor: Colors.white,
    backgroundColor: Colors.white,
    tabBarTheme: base.tabBarTheme.copyWith(
      labelColor: const Color.fromRGBO(0, 0, 0, 1),
      unselectedLabelColor: const Color.fromRGBO(255, 255, 255, 1),
    )
  );
}