import 'package:buqui_burgers/src/assets/constants.dart';
import 'package:buqui_burgers/src/routes/b_routes.dart';
import 'package:flutter/material.dart';

class MyThemedApp extends StatelessWidget {
  const MyThemedApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      theme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.light,
        appBarTheme: const AppBarTheme(
          elevation: 1,
        ),
      ),
    );
  }
}
