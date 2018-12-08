import '../../../../model/widget.dart';
import "package:flutter/material.dart";

import 'ConstrainedBox/index.dart' as ConstrainedBox;
import 'DecoratedBox/index.dart' as DecoratedBox;
import 'SizeBox/index.dart' as SizeBox;
import 'SizedOverflowBox/index.dart' as SizedOverflowBox;
import 'TextBox/index.dart' as TextBox;

List<WidgetPoint> widgetPoints = [
  WidgetPoint(
    name: 'ConstrainedBox',
    routerName: ConstrainedBox.Demo.routeName,
    buildRouter: (BuildContext context) => ConstrainedBox.Demo(),
  ),
  WidgetPoint(
    name: 'DecoratedBox',
    routerName: DecoratedBox.Demo.routeName,
    buildRouter: (BuildContext context) => DecoratedBox.Demo(),
  ),
  WidgetPoint(
    name: 'SizeBox',
    routerName: SizeBox.Demo.routeName,
    buildRouter: (BuildContext context) => SizeBox.Demo(),
  ),
  WidgetPoint(
    name: 'SizedOverflowBox',
    routerName: SizedOverflowBox.Demo.routeName,
    buildRouter: (BuildContext context) => SizedOverflowBox.Demo(),
  ),
  WidgetPoint(
    name: 'TextBox',
    routerName: TextBox.Demo.routeName,
    buildRouter: (BuildContext context) => TextBox.Demo(),
  ),
];
