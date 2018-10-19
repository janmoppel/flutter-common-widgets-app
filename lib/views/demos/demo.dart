import 'package:flutter/material.dart';


class DemoContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'Basic List';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: new Container(
          child: new Text("demo container")
        )
      ),
    );
  }
}