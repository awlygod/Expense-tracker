import 'package:flutter/material.dart';
import 'package:expense_tracker/widgets/expenses.dart';

var kColorScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(255, 33, 98, 188),
);
var kDarkColorScheme = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor: const Color.fromARGB(255, 5, 99, 125),
);
void main() {
  runApp(MaterialApp(
    darkTheme: ThemeData.dark().copyWith(
      colorScheme: kDarkColorScheme,
      cardTheme: const CardTheme().copyWith(
        color: kDarkColorScheme.onPrimary,
        margin: const EdgeInsets.symmetric(
          horizontal: 14,
          vertical: 4,
        ),
        shadowColor: const Color.fromARGB(255, 19, 28, 44),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            foregroundColor: const Color.fromARGB(255, 19, 28, 44)),
      ),
    ),
    theme: ThemeData().copyWith(
      colorScheme: kColorScheme,
      appBarTheme: const AppBarTheme().copyWith(
        shadowColor: Colors.white,
        backgroundColor: kColorScheme.onSecondaryContainer,
        foregroundColor: kColorScheme.primaryContainer,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 19, 28, 44),
          foregroundColor: Colors.white,
        ),
      ),
      cardTheme: const CardTheme().copyWith(
        color: const Color.fromARGB(246, 246, 246, 246),
        margin: const EdgeInsets.symmetric(
          horizontal: 14,
          vertical: 4,
        ),
        shadowColor: const Color.fromARGB(255, 19, 28, 44),
      ),
      scaffoldBackgroundColor: const Color.fromARGB(255, 218, 226, 249),
    ),
    themeMode: ThemeMode.system, // default
    home: const Expenses(),
  ));
}
