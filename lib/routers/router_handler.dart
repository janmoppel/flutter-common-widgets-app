import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import '../views/demos/category.dart';

import '../views/demos/demo0.dart' as Demo;
import '../views/demos/index.dart';


var demoHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      String index = params["name"]?.first;
      print("index>${index}>,${Demos[index]}");

      if (Demos[index] != null) {
        var Page = Demos[index];
        print("${Page} = ${index}");
        return Page;
      }

      return new Demo.DemoComponent(index);
    });

var categoryHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      String name = params["type"]?.first;
      print("type::: $name");

      return new CategoryHome(name);
    }
  );
var demosHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      String routerName = params["routerName"]?.first;
      print("type::: $routerName");

      return new Demo.DemoComponent('1');
    }
);