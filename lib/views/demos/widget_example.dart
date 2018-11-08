import 'package:flutter/material.dart';

class WidgetExample extends StatelessWidget {
  final String name;
  final String docUrl;
  WidgetExample({Key key,this.docUrl,this.name}):super(key:key);
  @override
  Widget build(BuildContext context) {
    return Container(
        child:Text(name)
    );
  }
}