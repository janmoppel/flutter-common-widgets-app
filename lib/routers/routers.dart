
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import './router_handler.dart';

class Routes {
  static String root = "/";
  static String widgetDemo = '/widget-demo';

  static void configureRoutes(Router router) {
    router.notFoundHandler = new Handler(
        handlerFunc: (BuildContext context, Map<String, List<String>> params) {
          print("ROUTE WAS NOT FOUND !!!");
        });
    router.define('/demo', handler: demoHandler);
    router.define(widgetDemo,handler: exampleHandler);
  }
}
