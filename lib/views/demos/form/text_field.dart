import 'package:flutter/material.dart';

class TextFieldDemo extends StatefulWidget {
  static String routerName = '/form/textField';
  _Demo createState() => _Demo();
}

class _Demo extends State<TextFieldDemo> {

  Widget build(BuildContext context) {
    return new Scaffold(
        appBar:  new AppBar(
          title: new Text('TextField Demo'),
        ),
        body: Container(
          child: Text("123"),
        )

    );
  }
}

