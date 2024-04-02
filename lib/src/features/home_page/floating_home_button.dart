import 'package:flutter/material.dart';

import '../../routes/b_routes.dart';

class HomeFloatingButton extends StatelessWidget {
  const HomeFloatingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.small(
      backgroundColor: Colors.cyan.withOpacity(.64),
      foregroundColor: Colors.white,
      splashColor: Colors.orangeAccent.withOpacity(0.80),
      shape: const CircleBorder(),
      elevation: 2,
      focusElevation: 4,
      onPressed: () {
        _goToAboutUs();
      },
      child: const Icon(
        Icons.question_mark,
        semanticLabel: 'About us',
      ),
    );
  }
}

void _goToAboutUs() {
  router.pushNamed(AppRoute.aboutUs.name);
}
