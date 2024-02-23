import 'package:buqui_burgers/src/features/home_page/home_screen.dart';
import 'package:buqui_burgers/src/features/menu/menu.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  routes: [
    GoRoute(
        path: '/',
        builder: (context, state) => const MyHomePage(title: 'Buqui Burgers'),
        routes: [
          GoRoute(
            path: 'menu',
            builder: (context, state) => const MyMenu(),
          ),
        ]),
  ],
);
