
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

import '../views/demos/home.dart';
import './router_handler.dart';

class Routes {
  static String root = "/";

  static void configureRoutes(Router router) {
    router.notFoundHandler = new Handler(
        handlerFunc: (BuildContext context, Map<String, List<String>> params) {
          print("ROUTE WAS NOT FOUND !!!");
        });
    router.define('/demo', handler: demoHandler);
    router.define('/category/:type', handler: categoryHandler);
    AllPoints.forEach((DemosPoint demo) {
      Handler handler = new Handler(
          handlerFunc: (BuildContext context, Map<String, List<String>> params) {
            return demo.buildRouter(context);
      });
      router.define(demo.routerName, handler: handler);
    });
  }
}
