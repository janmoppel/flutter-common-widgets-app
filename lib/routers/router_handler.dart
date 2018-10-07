import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
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
