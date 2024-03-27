import 'package:buqui_burgers/src/features/contact/contact.dart';
import 'package:buqui_burgers/src/features/about_us/about_us.dart';
import 'package:buqui_burgers/src/features/home_page/home_screen.dart';
import 'package:buqui_burgers/src/features/menu/menu.dart';
import 'package:buqui_burgers/src/features/not_found/not_found_scree.dart';
import 'package:buqui_burgers/src/features/sign_in/sign_in.dart';
import 'package:buqui_burgers/src/features/taproom/taproom_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

enum AppRoute { homePage, menu, aboutUs, contactUs, taproom, signIn }

final router = GoRouter(
  routes: [
    GoRoute(
        path: '/',
        name: AppRoute.homePage.name,
        builder: (context, state) => const MyHomePage(title: 'Buqui Burgers'),
        routes: [
          GoRoute(
            path: 'menu',
            name: AppRoute.menu.name,
            builder: (context, state) => const MyMenu(),
          ),
          GoRoute(
              path: 'aboutUs',
              name: AppRoute.aboutUs.name,
              pageBuilder: (context, state) =>
                  const MaterialPage(fullscreenDialog: true, child: AboutUs())),
          GoRoute(
            path: 'contactUs',
            name: AppRoute.contactUs.name,
            builder: (context, state) => const ContactBuqui(),
          ),
          GoRoute(
            path: 'taproom',
            name: AppRoute.taproom.name,
            builder: (context, state) => const MyTapRoomScreen(),
          ),
          GoRoute(
              path: 'signIn',
              name: AppRoute.signIn.name,
              pageBuilder: (context, state) => const MaterialPage(
                  fullscreenDialog: true, child: LogInForm())),
        ]),
  ],
  errorBuilder: (context, state) => const NotFoundScreen(),
);
