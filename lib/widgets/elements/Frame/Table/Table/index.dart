import 'package:flutter/material.dart';
import '../../../../../common/widget-demo.dart';

class Demo extends StatefulWidget {
  static const String routeName = '/element/Frame/Table/Table';
  _DemoState createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  String _desc = """
一个为它子组件使用表格布局的widget 
如果你的子组件是有一行，其实使用 Row 更合适一些，如果你的子组件只有一列，或许你可以是用 SliverList 或者Column widget.
表格中行的大小是根据列行数和宽度计算的来，控制列宽可以使用 columnWidth 属性，注意，Table中每一行的列数需要一定

更多关于Table的布局可以使用 RenderTable widget，关于控制字组件的对齐方式可以使用 TableCell
""";
  @override
  Widget build(BuildContext context) {
    return WidgetDemo(
      title: 'Table',
      desc: _desc,
      codeUrl:
          'https://github.com/alibaba-paimai-frontend/flutter-common-widgets-app/blob/dev/yifeng-0.0.4/lib/widgets/elements/Frame/Table/Table/index.dart',
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
