import 'package:flutter/material.dart';

final baseTheme = ThemeData.light(useMaterial3: true);
final nobotTheme = baseTheme.copyWith(
  colorScheme: ColorScheme.fromSeed(
    seedColor: Colors.green,
    brightness: Brightness.light,
  ),
  cardTheme: const CardTheme(margin: EdgeInsets.zero),
  menuTheme: MenuThemeData(
    style: MenuStyle(
      padding: WidgetStateProperty.all(
        const EdgeInsets.only(top: 16.0, bottom: 16.0),
      ),
    ),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: ButtonStyle(
      iconSize: WidgetStateProperty.all(18),
    ),
  ),
  filledButtonTheme: FilledButtonThemeData(
    style: ButtonStyle(
      iconSize: WidgetStateProperty.all(18),
    ),
  ),
  textButtonTheme: TextButtonThemeData(
    style: ButtonStyle(
      iconSize: WidgetStateProperty.all(18),
    ),
  ),
  textTheme: TextTheme(
    headlineLarge: baseTheme.textTheme.headlineLarge!.copyWith(
      fontSize: 28,
      fontWeight: FontWeight.w500,
    ),
    headlineMedium: baseTheme.textTheme.headlineMedium!.copyWith(
      fontSize: 24,
      fontWeight: FontWeight.w500,
    ),
    headlineSmall: baseTheme.textTheme.headlineSmall!.copyWith(
      fontSize: 20,
      fontWeight: FontWeight.w500,
    ),
    titleLarge: baseTheme.textTheme.titleLarge!.copyWith(
      fontSize: 18,
      fontWeight: FontWeight.w500,
    ),
    titleMedium: baseTheme.textTheme.titleMedium!.copyWith(
      fontSize: 16,
      fontWeight: FontWeight.w500,
    ),
    titleSmall: baseTheme.textTheme.titleSmall!.copyWith(
      fontSize: 14,
      fontWeight: FontWeight.w500,
    ),
  ),
  inputDecorationTheme: baseTheme.inputDecorationTheme.copyWith(
    border: const OutlineInputBorder(
      borderSide: BorderSide(),
    ),
    outlineBorder: const BorderSide(),
    errorBorder: const OutlineInputBorder(
      borderSide: BorderSide(),
    ),
    focusedBorder: const OutlineInputBorder(
      borderSide: BorderSide(),
    ),
    enabledBorder: const OutlineInputBorder(
      borderSide: BorderSide(),
    ),
  ),
);
