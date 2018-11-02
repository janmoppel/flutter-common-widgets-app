import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import '../views/demos/category.dart';

var categoryHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      String name = params["type"]?.first;
      print("type::: $name");

      return new CategoryHome(name);
    }
  );
