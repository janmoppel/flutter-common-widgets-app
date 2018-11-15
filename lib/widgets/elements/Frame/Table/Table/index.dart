import 'package:flutter/material.dart';
import '../../../../../common/widget-demo.dart';

class Demo extends StatefulWidget {
  static const String routeName = '/element/Frame/Table/Table';
  _DemoState createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  @override
  Widget build(BuildContext context) {
    return WidgetDemo(
      title: 'Padding',
      child: Table(
        columnWidths: const {
          0: FixedColumnWidth(50.0),
          1: FixedColumnWidth(100.0),
          2: FixedColumnWidth(50.0),
          3: FixedColumnWidth(100.0),
        },
        border: TableBorder.all(
            color: Colors.red, width: 1.0, style: BorderStyle.solid),
        children: const [
          TableRow(
            children: [
              Text('A1'),
              Text('B1'),
              Text('C1'),
              Text('D1'),
            ],
          ),
          TableRow(
            children: [
              Text('A2'),
              Text('B2'),
              Text('C2'),
              Text('D2'),
            ],
          ),
          TableRow(
            children: [
              Text('A3'),
              Text('B3'),
              Text('C3'),
              Text('D3'),
            ],
          ),
        ],
      ),
      docUrl: 'https://docs.flutter.io/flutter/widgets/Table-class.html',
    );
  }
}
