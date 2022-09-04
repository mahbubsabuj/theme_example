import 'package:flutter/material.dart';

class HawleColors {
  static const MaterialColor blue = MaterialColor(
    0xFF009DE2,
    <int, Color>{
      50: Color(0xFFEFF9FF),
      100: Color(0xFFDEF2FF),
      200: Color(0xFFB6E7FF),
      300: Color(0xFF75D7FF),
      400: Color(0xFF2CC3FF),
      500: Color(0xFF009DE2),
      600: Color(0xFF0089D4),
      700: Color(0xFF006DAB),
      800: Color(0xFF005C8D),
      900: Color(0xFF064D74),
    },
  );

  static const grey = MaterialColor(
    0xFF000000,
    <int, Color>{
      50: Color(0xFFF8FAFC),
      100: Color(0xFFF1F4F9),
      200: Color(0xFFE2E8F0),
      300: Color(0xFFCBD4E1),
      400: Color(0xFF94A3B8),
      500: Color(0xFF64748B),
      600: Color(0xFF475569),
      700: Color(0xFF334155),
      800: Color(0xFF1E2A3B),
      900: Color(0xFF0F1A2A),
    },
  );
  static const red = MaterialColor(
    0xFFFF0000,
    <int, Color>{
      50: Color(0xFFFEF2F2),
      100: Color(0xFFFEE2E2),
      200: Color(0xFFFECACA),
      300: Color(0xFFFCA5A5),
      400: Color(0xFFF87171),
      500: Color(0xFFEF4444),
      600: Color(0xFFDC2626),
      700: Color(0xFFB91C1C),
      800: Color(0xFF991B1B),
      900: Color(0xFF7F1D1D),
    },
  );
  static const green = MaterialColor(
    0xFF00FF00,
    <int, Color>{
      50: Color(0xFFF0FDF4),
      100: Color(0xFFDCFCE7),
      200: Color(0xFFBBF7D0),
      300: Color(0xFF86EFAC),
      400: Color(0xFF4ADE80),
      500: Color(0xFF22C55E),
      600: Color(0xFF16A34A),
      700: Color(0xFF15803D),
      800: Color(0xFF166534),
      900: Color(0xFF14532D),
    },
  );
  static const orange = MaterialColor(
    0xFFFFA500,
    <int, Color>{
      50: Color(0xFFFFF7ED),
      100: Color(0xFFFFEDD5),
      200: Color(0xFFFED7AA),
      300: Color(0xFFFDBA74),
      400: Color(0xFFFB923C),
      500: Color(0xFFF97316),
      600: Color(0xFFEA580C),
      700: Color(0xFFC2410C),
      800: Color(0xFF9A3412),
      900: Color(0xFF7C2D12),
    },
  );
  static const black = MaterialColor(
    0xFF000000,
    <int, Color>{
      50: Color(0xFFF3F3F3),
      100: Color(0xFFE6E6E6),
      200: Color(0xFFC0C0C0),
      300: Color(0xFF979797),
      400: Color(0xFF4D4D4D),
      500: Color(0xFF000000),
      600: Color(0xFF000000),
      700: Color(0xFF000000),
      800: Color(0xFF000000),
      900: Color(0xFF000000),
    },
  );

  static const white = MaterialColor(
    0xFFFFFFFF,
    <int, Color>{
      50: Color(0xFFFFFFFF),
      100: Color(0xFFFFFFFF),
      200: Color(0xFFFFFFFF),
      300: Color(0xFFFFFFFF),
      400: Color(0xFFFFFFFF),
      500: Color(0xFFFFFFFF),
      600: Color(0xFFE3E3E3),
      700: Color(0xFF999999),
      800: Color(0xFF737373),
      900: Color(0xFF4A4A4A),
    },
  );
}

Map<MaterialColor, String> colorsStringMap = {
  HawleColors.red: 'red',
  HawleColors.blue: 'blue',
  HawleColors.green: 'green',
  HawleColors.orange: 'orange',
  HawleColors.black: 'black'
};

Map<String, MaterialColor> colorsMap = {
  'red': HawleColors.red,
  'blue': HawleColors.blue,
  'green': HawleColors.green,
  'orange': HawleColors.orange,
  'black': HawleColors.black
};

// Map<String, Color> blue = {
//   'blue50': Colors.blue.shade50,
// };

ThemeData getTheme(MaterialColor primaryColor, MaterialColor accentColor) {
  return ThemeData(
    brightness: Brightness.light,
    appBarTheme: AppBarTheme(
      backgroundColor: primaryColor.shade500,
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: primaryColor.shade400,
    ),
    chipTheme: ChipThemeData(backgroundColor: accentColor.shade400),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(accentColor.shade400),
      ),
    ),
  );
}





// ThemeData lightTheme = ThemeData(
//     brightness: Brightness.light,
//     appBarTheme: AppBarTheme(
//       backgroundColor: primary.shade500,
//     ),
//     floatingActionButtonTheme: const FloatingActionButtonThemeData(
//       backgroundColor: primary.shade400,
//     ),
//     elevatedButtonTheme: ElevatedButtonThemeData(
//         style: ButtonStyle(backgroundColor: accent.shade500)));

// ThemeData darkTheme = ThemeData(
//   brightness: Brightness.dark,
// );