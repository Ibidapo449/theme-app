import 'package:flutter/material.dart';
import 'package:tobi/home.dart';
import 'package:tobi/theme/theme_constant.dart';
import 'package:tobi/theme/theme_manager.dart';

void main() {
  runApp(const MyApp());
}

ThemeManager _themeManager = ThemeManager();

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Flutter Demo',
      theme:  lightTheme,
      darkTheme: darkTheme,
      themeMode: _themeManager.themeMode,
      home: const MyHomePage(),
    );
  }
}
