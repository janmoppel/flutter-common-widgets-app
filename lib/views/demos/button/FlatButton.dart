import 'package:flutter/material.dart';

class DemoComponent extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Component Demo'),
      ),
      body: new Center(
          child: new Text('button demo')
      ),
    );
  }
}