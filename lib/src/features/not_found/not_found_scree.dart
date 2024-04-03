import 'package:buqui_burgers/src/common_widgets/my_app_bar.dart';
import 'package:buqui_burgers/src/features/not_found/empty_placeholder_widget.dart';
import 'package:buqui_burgers/src/localization/string_hardcoded.dart';
import 'package:flutter/material.dart';

class NotFoundScreen extends StatelessWidget {
  const NotFoundScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      body: EmptyPlaceholderWidget(
        message: '404 -Page not found'.hardcoded,
      ),
    );
  }
}
