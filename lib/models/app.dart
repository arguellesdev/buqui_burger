import 'package:buqui_burgers/models/routes/my_routes.dart';
import 'package:flutter/material.dart';

class MyAppTheme extends StatefulWidget {
  const MyAppTheme({super.key});

  @override
  State<MyAppTheme> createState() => _MyAppThemeState();
}

class _MyAppThemeState extends State<MyAppTheme> {
  late MyRoutesDelegate<Object> _routerDelegate;
  final MyRoutesParser<Object> _routeInformationParser = MyRoutesParser<Object>();


  @override
  void initState(){
    super.initState();
    _routerDelegate = MyRoutesDelegate();

  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
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
      routerDelegate: _routerDelegate,
      routeInformationParser: _routeInformationParser,
    );
  }

}

