import 'package:flutter/material.dart';
import './widgets/axis/axis_list.dart';
import './widgets/expanded/expanded_list.dart';
class DemoComponent extends StatelessWidget {
  String name;
  DemoComponent(this.name);


  @override
  Widget build(BuildContext context) {
    Widget _body = Container();
    switch(name){
      case 'Axis':
      _body = AxisList();
      break;
      case 'Expanded':
      _body = ExpandedList();
    }
    return new Scaffold(
      appBar:  new AppBar(
        title: new Text('$name 列表'),
      ),
      body: _body
    ) ;
  }
}