import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';

import '../views/demos/demo1.dart' as Demo;
import '../views/demos/widget_example.dart';

var demoHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  String name = params["name"]?.first;

  return new Demo.DemoComponent(name);
});

var exampleHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  String name = params["name"]?.first;
  String docUrl = params["docUrl"]?.first;

  return new WidgetExample(
    docUrl: docUrl,
    name: name,
  );
});
