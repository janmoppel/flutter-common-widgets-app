import 'package:flutter/material.dart';

class DemoComponent extends StatelessWidget {
  String name;
  DemoComponent(this.name);


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar:  new AppBar(
        title: new Text('Component Demo'),
      ),
      body: new Center(
        child: new Text('param[name] from url: ${this.name}'),
      ),
    ) ;
  }


}