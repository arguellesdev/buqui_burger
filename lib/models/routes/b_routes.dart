import 'package:buqui_burgers/models/screens/home_page/home_page1.dart';
import 'package:buqui_burgers/models/screens/menu/menu.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const MyHomePage(title: 'Buqui Burgers'),
    ),
    GoRoute(
        path: '/menu',
        builder: (context, state) => const MyMenu(),
    ),
  ],
);
