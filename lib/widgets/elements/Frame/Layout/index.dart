import '../../../../model/widget.dart';
import "package:flutter/material.dart";

import 'Row/index.dart' as Row;
import 'Column/index.dart' as Column;
import 'Container/index.dart' as Container;

List<WidgetPoint> widgetPoints = [
  WidgetPoint(
    name: 'Row',
    routerName: Row.Demo.routeName,
    buildRouter: (BuildContext context) => Row.Demo(),
  ),
  WidgetPoint(
    name: 'Column',
    routerName: Column.Demo.routeName,
    buildRouter: (BuildContext context) => Column.Demo(),
  ),
  WidgetPoint(
    name: 'Container',
    routerName: Container.Demo.routeName,
    buildRouter: (BuildContext context) => Container.Demo(),
  ),
];
