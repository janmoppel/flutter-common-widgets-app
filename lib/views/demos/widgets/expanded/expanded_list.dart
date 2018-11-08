import 'package:flutter/material.dart';
import '../../../../components/widget_list_temp.dart';


class ExpandedList extends StatelessWidget {

  List<Map<String,dynamic>> widgetList = [
    {"title":"expanded","subTitle":'用于展开 Row,Column或Flex子项的窗口小部件',"icon":Icon(Icons.exit_to_app),"doc":"https://docs.flutter.io/flutter/widgets/Expanded-class.html"}
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: WidgetListTemp(widgetList: widgetList,),
    );
  }
}