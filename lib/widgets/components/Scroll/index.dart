import 'package:flutter/material.dart';
import '../../../model/widget.dart';

import './ScrollView/index.dart' as ScrollView;

List<WidgetPoint> widgetPoints = [
  WidgetPoint(
    name: 'ScrollView',
    routerName: ScrollView.Demo.routeName,
    buildRouter: (BuildContext context) => ScrollView.Demo(),
  ),
];