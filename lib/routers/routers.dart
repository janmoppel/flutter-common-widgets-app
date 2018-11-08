
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import '../widgets/index.dart';
import '../model/widget.dart';
import './router_handler.dart';

class Routes {
  static String root = "/";

  static void configureRoutes(Router router) {
    List widgetDemosList = new WidgetDemoList().getDemos();
    router.notFoundHandler = new Handler(
        handlerFunc: (BuildContext context, Map<String, List<String>> params) {
          print("ROUTE WAS NOT FOUND !!!");
        });


    router.define('/category/:type', handler: categoryHandler);

    widgetDemosList.forEach((demo) {
      Handler handler = new Handler(
          handlerFunc: (BuildContext context, Map<String, List<String>> params) {
            return demo.buildRouter(context);
      });
      router.define(demo.routerName, handler: handler);
    });
  }
}
