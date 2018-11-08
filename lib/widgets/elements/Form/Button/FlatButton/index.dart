import 'package:flutter/material.dart';

class Demo extends StatefulWidget {
  static const String routeName = '/element/Form/Button/FlatButton';
  _Demo createState() => _Demo();
}

class _Demo extends State<Demo> {

  Widget build(BuildContext context) {
    return Container(
      child: FlatButton(onPressed: () {}, child: Text("BUtton"))
    );
  }
}
