import 'package:flutter/material.dart';

enum CustomTheme { purpleGreen, blueOrange }

final Map<CustomTheme, ThemeData> customThemeData = {
  CustomTheme.blueOrange: ThemeData(
    // primarySwatch: Colors.orange,
    // primaryColor: Colors.orange[500],
    // backgroundColor: Colors.blue,
    useMaterial3: true,
    scaffoldBackgroundColor: Colors.blue,
    // colorScheme: const ColorScheme(
    //   brightness: Brightness.light,
    //   primary: Colors.orange,
    //   onPrimary: Colors.black,
    //   secondary: Colors.grey,
    //   onSecondary: Colors.grey,
    //   background: Colors.blue,
    //   onBackground: Colors.grey,
    //   surface: Colors.grey,
    //   onSurface: Colors.grey,
    //   error: Colors.deepOrange,
    //   onError: Colors.red,
    // ),
    // floatingActionButtonTheme:
    //     const FloatingActionButtonThemeData(backgroundColor: Colors.orange),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        shape: MaterialStateProperty.all<OutlinedBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
        ),
      ),
    ),
  ),
  CustomTheme.purpleGreen: ThemeData(
    // useMaterial3: true,
    colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: Colors.purple,
      onPrimary: Colors.blue,
      secondary: Colors.green,
      onSecondary: Colors.greenAccent,
      background: Colors.green,
      onBackground: Colors.yellow,
      surface: Colors.grey,
      onSurface: Colors.grey,
      error: Colors.deepOrangeAccent,
      onError: Colors.redAccent,
    ),
    // brightness: Brightness.light,
    // primarySwatch: Colors.purple,
    // switchTheme: SwitchThemeData(
    //   trackColor: MaterialStateProperty.all<Color>(Colors.grey),
    //   thumbColor: MaterialStateProperty.all<Color>(Colors.white),
    // ),
    // inputDecorationTheme: InputDecorationTheme(
    //   border: OutlineInputBorder(
    //       borderRadius: BorderRadius.circular(20.0),
    //       borderSide: BorderSide.none),
    //   filled: true,
    //   fillColor: Colors.grey.withOpacity(0.1),
    // ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        shape: MaterialStateProperty.all<OutlinedBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
        ),
      ),
    ),
  )
};
