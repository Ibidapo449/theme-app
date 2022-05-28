import 'package:flutter/material.dart';
import 'package:tobi/theme/theme_manager.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key,}) : super(key: key);
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  
 final ThemeManager _themeManager = ThemeManager();
  

  @override
  Widget build(BuildContext context) {
    
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return  Scaffold(
      appBar: AppBar(
      
        title: const Text("dapo"),
      ),
      body: Center(
        child: Switch(
            value: _themeManager.themeMode == ThemeMode.dark,
            onChanged: (newValue) {
          _themeManager.toggleTheme(newValue);
        }
            ),
      ),
      
    
    );
  }
}
