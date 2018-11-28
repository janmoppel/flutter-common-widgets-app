import '../../../../model/widget.dart';
import "package:flutter/material.dart";

import 'Checkbox/index.dart' as Checkbox;


List<WidgetPoint> widgetPoints = [
  WidgetPoint(
    name: 'Checkbox',
    routerName: Checkbox.Demo.routeName,
    buildRouter: (BuildContext context) => Checkbox.Demo(),
  )
];