
import 'package:buqui_burgers/models/screens/home_page/home_page.dart';
import 'package:flutter/material.dart';

class MyAppTheme extends StatefulWidget {
  const MyAppTheme({super.key});

  @override
  State<MyAppTheme> createState() => _MyAppThemeState();
}

class _MyAppThemeState extends State<MyAppTheme> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: const Color(0xFFDFE2E5),
        brightness: Brightness.light,
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF2A3037), //background button color
          foregroundColor: Color(0xFFF7F7FB), //Text color
          elevation: 1,
        ),
      ),
      home: const MyHomePage(title: 'Buqui Mahaka',),
    );
  }
}

