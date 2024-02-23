import 'dart:async';

import 'package:buqui_burgers/models/screens/home_page/home_page.dart';
import 'package:buqui_burgers/models/screens/menu/menu.dart';
import 'package:flutter/material.dart';
import 'dart:core';

/*Routes definition by this file and the entire configuration where the features of the screens will be called*/

class MyRoutes {
  //F:Anya To:Anya this class is created to put all the routes (where features like onTap will access).
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const MyHomePage(title: 'Buqui Burgers',));
      case '/menu':
        return MaterialPageRoute(builder: (_) => const MyMenu());
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Lovely Buqui there is an Error, try again'),
        ),
        body: const Center(
          child: Text('Page is bichi meaning is not found'),
        ),
      );
    });
  }
}

class MyRoutesDelegate<Object> extends RouterDelegate<Object>
//F:Anya T: Anya this manages navigation between different screens
    with ChangeNotifier, PopNavigatorRouterDelegateMixin<Object> {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKey,
      onPopPage: (route, result) {
        if (!route.didPop(result)) {
          return false;
        }
        notifyListeners();
        return true;
      },
      pages: const [
        MaterialPage(
          key: ValueKey('HomePage'),
          child: MyHomePage(title: 'Buqui Burgers',),
        ),
      ],
    );
  }

  @override
  GlobalKey<NavigatorState>? get navigatorKey => GlobalKey<NavigatorState>();

  @override
  Future<void> setNewRoutePath(configuration) async {}
}

class MyRoutesParser<Object> extends RouteInformationParser<Object> {
  //F:Anya To:Anya for interpreting route information and deciding what the buqui should does.
  @override
  Future<Object> parseRouteInformation(RouteInformation routeInformation) async {
    return Future.value(RouteInformation(uri: routeInformation.uri) as FutureOr<Object>?);
  }

  @override
  RouteInformation? restoreRouteInformation(dynamic configuration) {
    return  RouteInformation(uri: Uri.parse('/') );

    }
}
