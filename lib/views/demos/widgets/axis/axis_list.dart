import 'package:flutter/material.dart';

class AxisList extends StatelessWidget {
  List<Map<String,dynamic>> widgetList = [
    {"title":"mainAxis","subTitle":'这是mainAxis描述',"icon":Icon(Icons.linear_scale),"doc":""}
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('lalal'),
    );
  }
}