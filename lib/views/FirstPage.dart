import 'dart:async';

import 'package:flutter/material.dart';
import '../components/List.dart';
import '../components/Pagination.dart';


class FirstPage extends StatefulWidget {
  @override
  FirstPageState createState() => new FirstPageState();
}

class FirstPageState extends State<FirstPage> {

  @override
  Widget build(BuildContext context) {
    return new Column(
        children: <Widget>[
          new Container(
            child: new Pagination(),
          ),
          new Expanded(
            child: new List(),
          ),
        ]
    );
  }
}


