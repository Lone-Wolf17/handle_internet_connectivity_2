import 'package:flutter/material.dart';
import 'package:handle_internet_connectivity_2/app/constants/route_names.dart';
import 'package:handle_internet_connectivity_2/app/custom_route.dart';
import 'package:handle_internet_connectivity_2/app/providers/connectivity_provider.dart';
import 'package:handle_internet_connectivity_2/views/home_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ConnectivityProvider(),
      child: MaterialApp(
        title: 'Centralised NoInternet',
        theme: ThemeData(
          primarySwatch: Colors.pink,
        ),
        onGenerateRoute: CustomRoute.allRoutes,
        initialRoute: RouteNames.homePage,
        home: const MyHomePage(),
      ),
    );
  }
}
