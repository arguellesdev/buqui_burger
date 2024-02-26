import 'package:buqui_burgers/src/features/contact/contact.dart';
import 'package:buqui_burgers/src/features/home_page/about_us.dart';
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
          GoRoute(
            path: 'about',
            builder: (context, state) => const AboutUs(),
          ),
          GoRoute(path: 'contact',
          builder: (context, state) => const ContactBuqui(),
          )
        ]),
  ],
);
