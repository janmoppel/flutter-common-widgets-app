import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter_rookie_book/common/widget-demo.dart';
import './demo.dart' as align;

const String _flatText0 = """### **简介**
> Align控件即对齐控件，能将子控件所指定方式对齐，并根据子控件的大小调整自己的大小。
- 根据自己需求，进行控件对齐
### **属性**
> alignment → AlignmentGeometry
- 要对齐右下方的框，您将通过此框一个比子的自然大小更大的严格约束，并且对齐Alignment.bottomRight
- 同理：Alignment.center，Alignment.bottomLeft，Alignment.topLeft等
""";

const String _flatText1 = """### **特性**
>  widthFactor / heightFactor → double
- 如果widthFactor / heightFactor 为空，并且外部无任何约束，孩子控件大小默认，那么这个控件将根据自身尺寸最大化
""";
const String _flatText2 = """
- 如果widthFactor / heightFactor 不为空，并且外部无约束，align将匹配对应的孩子尺寸
- ex：widthFactor/ heightFactor 为2.0；那么widget的宽高为孩子宽高的两倍
""";
const String _flatText3 = """
- 如果widthFactor / heightFactor 为空，并且外部无约束，孩子控件设置自身大小
- Alignment部分标签失效

""";

class Demo extends StatefulWidget {
  static const String routeName = '/element/Frame/Align/Align';

  @override
  State<StatefulWidget> createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  @override
  Widget build(BuildContext context) {
    return WidgetDemo(
      title: 'Align',
      codeUrl:
          'https://github.com/alibaba-paimai-frontend/flutter-common-widgets-app/blob/dev/sanlu-0.0.4/lib/widgets/elements/Frame/Align/Align/demo.dart',
      docUrl: 'https://docs.flutter.io/flutter/widgets/Align-class.html',
      child: new Container(
        child: _AlignCreate(),
      ),
    );
  }

  Column _AlignCreate() {
    return new Column(
      children: <Widget>[
        MarkdownBody(data: _flatText0),
        SizedBox(height: 10.0),
        new Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            align.AlignAlignment(Alignment.center, 'center'),
            align.AlignAlignment(Alignment.centerLeft, 'centerLeft'),

          ],
        ),
        SizedBox(height: 10.0),
        new Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            align.AlignAlignment(Alignment.centerRight, 'centerRight'),
            align.AlignAlignment(Alignment.bottomCenter, 'btCenter'),
            align.AlignAlignment(Alignment.topCenter, 'topCenter'),

          ],
        ),
        SizedBox(height: 10.0),
        new Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            align.AlignAlignment(Alignment.topLeft, 'topLeft'),
            align.AlignAlignment(Alignment.topRight, 'topRight'),
            align.AlignAlignment(Alignment.bottomLeft, 'bottomLeft'),
          ],
        ),
        SizedBox(height: 10.0),
        MarkdownBody(data: _flatText1),
        Container(
          margin: new EdgeInsets.only(top: 20.0, bottom: 20.0),
          color: Color(0xffe91e63),
          child: new Align(
            alignment: Alignment.topLeft,
            child: new Text("Align"),
          ),
        ),
        MarkdownBody(data: _flatText2),
        align.AlignFactor(Alignment.topLeft, 2.0, 2.0, 'topleft'),
        MarkdownBody(data: _flatText3),
        align.AlignFactor(Alignment.topRight, null, null, 'topleft'),
        align.AlignFactor(Alignment.center, null, null, 'center'),
        align.AlignFactor(Alignment.bottomLeft, null, null, 'bottomLeft'),
      ],
    );
  }
}
