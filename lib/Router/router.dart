import 'package:div/Router/router_config.dart';
import 'package:div/screen/home.dart';
import 'package:div/screen/screen1.dart';
import 'package:div/screen/screen2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Routers{
  static Route? buildRoutes(RouteSettings settings) {
    switch(settings.name){
      case RouterConfig.home:
        return MaterialPageRoute(
          settings: settings,
          builder: (BuildContext context) => Home(),
        );
      case RouterConfig.screen1:
        return MaterialPageRoute(
          settings: settings,
          builder: (BuildContext context) => Screen1(),
        );
      case RouterConfig.screen2:
        return MaterialPageRoute(
          settings: settings,
          builder: (BuildContext context) => Screen2(),
        );
      default:
        return null;
    }
  }
}