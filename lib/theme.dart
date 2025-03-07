import 'package:flutter/material.dart';

final baseTheme = ThemeData.light(useMaterial3: true);
final nobotTheme = baseTheme.copyWith(
  colorScheme: flexSchemeLight,
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
// Light and dark ColorSchemes made by FlexColorScheme v7.3.1.
// These ColorScheme objects require Flutter 3.7 or later.
const ColorScheme flexSchemeLight = ColorScheme(
  brightness: Brightness.light,
  primary: Color(0xff1a2c42),
  onPrimary: Color(0xffffffff),
  primaryContainer: Color(0xff9eacbd),
  onPrimaryContainer: Color(0xff000000),
  primaryFixed: Color(0xffc9d1da),
  primaryFixedDim: Color(0xff9eaabb),
  onPrimaryFixed: Color(0xff000000),
  onPrimaryFixedVariant: Color(0xff04070a),
  secondary: Color(0xffe59a18),
  onSecondary: Color(0xff000000),
  secondaryContainer: Color(0xffe0bd80),
  onSecondaryContainer: Color(0xff000000),
  secondaryFixed: Color(0xfff3cd8d),
  secondaryFixedDim: Color(0xffedb557),
  onSecondaryFixed: Color(0xff000000),
  onSecondaryFixedVariant: Color(0xff000000),
  tertiary: Color(0xfff0b03f),
  onTertiary: Color(0xff000000),
  tertiaryContainer: Color(0xffe9cfa1),
  onTertiaryContainer: Color(0xff000000),
  tertiaryFixed: Color(0xffecd5ac),
  tertiaryFixedDim: Color(0xffe3c081),
  onTertiaryFixed: Color(0xff000000),
  onTertiaryFixedVariant: Color(0xff281b02),
  error: Color(0xffba1a1a),
  onError: Color(0xffffffff),
  errorContainer: Color(0xffffdad6),
  onErrorContainer: Color(0xff410002),
  surface: Color(0xFFDBDEE2), // scaffold background color
  onSurface: Color(0xff000000),
  surfaceDim: Color(0xFFEBECEE),
  surfaceBright: Color(0xFFD0D1D3),
  surfaceContainerLowest: Color(0xFFDCDDDF),
  surfaceContainerLow: Color(0xFFE1E3E5),
  surfaceContainer: Color(0xFFE6E8E9),
  surfaceContainerHigh: Color(0xFFEDEEF0),
  surfaceContainerHighest: Color(0xFFEDEEF0), // Card.filled background color
  onSurfaceVariant: Color(0xff000000),
  outline: Color(0xff737373),
  outlineVariant: Color(0xffbfbfbf),
  shadow: Color(0xff000000),
  scrim: Color(0xff000000),
  inverseSurface: Color(0xff111314),
  onInverseSurface: Color(0xffffffff),
  inversePrimary: Color(0xff9eacbd),
  surfaceTint: Color(0xff1a2c42),
);

const ColorScheme flexSchemeDark = ColorScheme(
  brightness: Brightness.dark,
  primary: Color(0xff60748a),
  onPrimary: Color(0xffffffff),
  primaryContainer: Color(0xff1a2c42),
  onPrimaryContainer: Color(0xffffffff),
  primaryFixed: Color(0xffc9d1da),
  primaryFixedDim: Color(0xff9eaabb),
  onPrimaryFixed: Color(0xff000000),
  onPrimaryFixedVariant: Color(0xff04070a),
  secondary: Color(0xffebb251),
  onSecondary: Color(0xff000000),
  secondaryContainer: Color(0xffd48608),
  onSecondaryContainer: Color(0xffffffff),
  secondaryFixed: Color(0xfff3cd8d),
  secondaryFixedDim: Color(0xffedb557),
  onSecondaryFixed: Color(0xff000000),
  onSecondaryFixedVariant: Color(0xff000000),
  tertiary: Color(0xfff4ca7e),
  onTertiary: Color(0xff000000),
  tertiaryContainer: Color(0xffc68e2d),
  onTertiaryContainer: Color(0xffffffff),
  tertiaryFixed: Color(0xffecd5ac),
  tertiaryFixedDim: Color(0xffe3c081),
  onTertiaryFixed: Color(0xff000000),
  onTertiaryFixedVariant: Color(0xff281b02),
  error: Color(0xffffb4ab),
  onError: Color(0xff690005),
  errorContainer: Color(0xff93000a),
  onErrorContainer: Color(0xffffb4ab),
  surface: Color(0xff121212),
  onSurface: Color(0xffffffff),
  surfaceDim: Color(0xff060606),
  surfaceBright: Color(0xff2c2c2c),
  surfaceContainerLowest: Color(0xff323232),
  surfaceContainerLow: Color(0xff0e0e0e),
  surfaceContainer: Color(0xff151515),
  surfaceContainerHigh: Color(0xff1d1d1d),
  surfaceContainerHighest: Color(0xff282828),
  onSurfaceVariant: Color(0xffffffff),
  outline: Color(0xff8c8c8c),
  outlineVariant: Color(0xff404040),
  shadow: Color(0xff000000),
  scrim: Color(0xff000000),
  inverseSurface: Color(0xffffffff),
  onInverseSurface: Color(0xff000000),
  inversePrimary: Color(0xff363e47),
  surfaceTint: Color(0xff60748a),
);
