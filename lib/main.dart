import 'package:div/Router/router_config.dart';
import 'package:div/screen/home.dart';
import 'package:flutter/material.dart';

import 'Router/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: Routers.buildRoutes,
      initialRoute: RouterConfig.home
    );
  }
}