import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theme_example/cubits/cubit/theme_cubit.dart';
import 'package:theme_example/theme/theme_constants.dart';
import 'package:theme_example/theme/theme_manager.dart';
import 'package:theme_example/theme/themes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  List<MaterialColor> primaryColors = [
    HawleColors.red,
    HawleColors.blue,
    HawleColors.orange,
    HawleColors.black
  ];
  List<MaterialColor> accentColors = [
    HawleColors.red,
    HawleColors.green,
    HawleColors.orange,
    HawleColors.black
  ];

  MaterialColor selectedPrimaryColor = HawleColors.red;
  MaterialColor selectedAccentColor = HawleColors.red;
  ThemeData theme = ThemeData();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ThemeCubit(),
      child: BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, state) {
          selectedPrimaryColor = colorsMap[state.primaryColor]!;
          selectedAccentColor = colorsMap[state.accentColor]!;
          return MaterialApp(
            title: 'Theme Switcher Example',
            theme: getTheme(
                colorsMap[state.primaryColor]!, colorsMap[state.accentColor]!),
            home: Scaffold(
              appBar: AppBar(
                title: const Text("Theme Switcher Example"),
                actions: const [
                  // BlocBuilder<ThemeCubit, ThemeState>(
                  //   builder: (context, state) {
                  //     return Switch(
                  //       onChanged: (value) => {
                  //         context.read<ThemeCubit>().toggleTheme(
                  //               state.theme == CustomTheme.blueOrange
                  //                   ? CustomTheme.purpleGreen
                  //                   : CustomTheme.blueOrange,
                  //             ),
                  //       },
                  //       value: state.theme == CustomTheme.blueOrange,
                  //     );
                  //   },
                  // ),
                ],
              ),
              body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 10, right: 10, top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            width: 150,
                            child: DropdownButton<Color>(
                              value: selectedPrimaryColor,
                              icon: const Icon(Icons.arrow_downward),
                              elevation: 16,
                              style: const TextStyle(color: Colors.black),
                              underline: Container(
                                height: 2,
                                color: Colors.black,
                              ),
                              onChanged: (Color? value) {
                                context
                                    .read<ThemeCubit>()
                                    .setPrimaryColor(colorsStringMap[value]!);
                                // setState(() {
                                //   selectedPrimaryColor = value!;
                                //   _getTheme();
                                // });
                              },
                              items: accentColors
                                  .map<DropdownMenuItem<Color>>((Color value) {
                                return DropdownMenuItem<Color>(
                                  value: value,
                                  child: Container(
                                    height: 30,
                                    width: 100,
                                    color: value,
                                    child: Center(
                                      child: Text(colorsStringMap[value]!),
                                    ),
                                  ),
                                );
                              }).toList(),
                            ),
                          ),
                          SizedBox(
                            width: 150,
                            child: DropdownButton<Color>(
                              value: selectedAccentColor,
                              icon: const Icon(Icons.arrow_downward),
                              elevation: 16,
                              style: const TextStyle(color: Colors.black),
                              underline: Container(
                                height: 2,
                                color: Colors.black,
                              ),
                              onChanged: (Color? value) {
                                context
                                    .read<ThemeCubit>()
                                    .setAccentColor(colorsStringMap[value]!);
                              },
                              items: primaryColors.map<DropdownMenuItem<Color>>(
                                (Color value) {
                                  return DropdownMenuItem<Color>(
                                    value: value,
                                    child: Container(
                                      height: 30,
                                      width: 100,
                                      color: value,
                                      child: Center(
                                        child: Text(colorsStringMap[value]!),
                                      ),
                                    ),
                                  );
                                },
                              ).toList(),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text("Some text", style: TextStyle(fontSize: 30)),
                    ElevatedButton(
                      onPressed: () => {},
                      child: const Icon(Icons.add_a_photo),
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        border: Border.all(width: 2),
                      ),
                    ),
                    Chip(
                      label: Text("Good"),
                    )
                  ],
                ),
              ),
              floatingActionButton: FloatingActionButton(
                onPressed: () => {},
                child: const Icon(Icons.circle),
              ),
            ),
          );
        },
      ),
    );
  }
}

// ThemeManager _themeManager = ThemeManager();

// class MyApp extends StatefulWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   @override
//   void initState() {
//     _themeManager.addListener(themeListener);
//     super.initState();
//   }

//   themeListener() {
//     if (mounted) {
//       setState(() {});
//     }
//   }

//   @override
//   void dispose() {
//     _themeManager.removeListener(themeListener);
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Theme Example',
//       theme: lightTheme,
//       darkTheme: darkTheme,
//       themeMode: _themeManager.themeMode,
//       home: const HomePage(),
//     );
//   }
// }

// class HomePage extends StatefulWidget {
//   const HomePage({Key? key}) : super(key: key);

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Theme Switcher Example"),
//         actions: [
//           Switch(
//             value: _themeManager.themeMode == ThemeMode.dark,
//             onChanged: (_value) {
//               setState(() {
//                 _themeManager.toggleTheme(
//                     _themeManager.themeMode == ThemeMode.dark ? false : true);
//               });
//             },
//           ),
//         ],
//       ),
//       body: Center(
//         child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
//           const Text("Some Text!"),
//           ElevatedButton(
//             onPressed: () => {},
//             child: const Icon(Icons.grade),
//           ),
//         ]),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () => {},
//         child: const Icon(Icons.camera),
//       ),
//     );
//   }
// }
