import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';

import '../views/demos/demo1.dart' as Demo;



var demoHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      String name = params["name"]?.first;

      return new Demo.DemoComponent(name);
    });
