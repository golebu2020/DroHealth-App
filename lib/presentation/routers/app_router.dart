import 'package:drohealth/presentation/screens/detail_screen.dart';
import 'package:drohealth/presentation/screens/store_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  // ignore: non_constant_identifier_names
  Route onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => StoreScreen(),
        );
        break;
      case '/DetailScreen':
        return MaterialPageRoute(
          builder: (_) => DetailScreen(product: null, index: null,),
        );
        break;
      default:
        return null;
    }
  }
}
