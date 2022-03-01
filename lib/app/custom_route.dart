import 'package:flutter/material.dart';
import 'package:handle_internet_connectivity_2/app/providers/connectivity_provider.dart';

import 'package:handle_internet_connectivity_2/views/home_page.dart';
import 'package:handle_internet_connectivity_2/views/no_internet_page.dart';
import 'package:handle_internet_connectivity_2/views/under_construction.dart';
import 'package:provider/provider.dart';

import 'constants/route_names.dart';


class CustomRoute {
  static Route<dynamic> allRoutes (RouteSettings settings) {
    return MaterialPageRoute(builder: (context) {
      final isOnline = Provider.of<ConnectivityProvider> (context).isOnline;

      if (!isOnline) {
        return const NoInternetPage();
      }



      switch (settings.name) {
        case RouteNames.homePage:
          return const MyHomePage();

        default:
          return const UnderConstruction();
      }
    });
  }
}