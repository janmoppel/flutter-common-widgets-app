import "package:flutter/material.dart";
import "all.dart";
class DemoCategory {
  const DemoCategory({ this.name, this.icon });
  @required final String name;
  @required final IconData icon;

  @override
  bool operator == (dynamic other) {
    if (identical(this, other))
      return true;
    if (runtimeType != other.runtimeType)
      return false;
    final DemoCategory typedOther = other;
    return typedOther.name == name && typedOther.icon == icon;
  }

  @override
  int get hashCode => hashValues(name, icon);

  @override
  String toString() {
    return '$runtimeType($name)';
  }
}

const DemoCategory Form = DemoCategory(
  name: 'Form',
  icon: Icons.add
);

const DemoCategory Basic = DemoCategory(
    name: 'Basic',
    icon: Icons.add
);

class DemosPoint {
  final String title;
  final IconData icon;
  final DemoCategory category;
  final String routerName;
  final WidgetBuilder buildRouter;

  const DemosPoint({
    this.title,
    this.icon,
    this.category,
    this.routerName,
    this.buildRouter
  }) : assert(title != null);
  String toString() {
    return '$runtimeType ($title $routerName)';
  }
}

List<DemosPoint> getDemosPoints() {
  final List<DemosPoint> demosPoints = <DemosPoint>[
    DemosPoint(
      title: 'sliver',
      icon: Icons.ac_unit,
      category: Form,
      routerName: SliverDemo.routerName,
      buildRouter: (BuildContext context) => SliverDemo(),
    ),
    DemosPoint(
      title: 'process',
      icon: Icons.perm_camera_mic,
      category: Basic,
      routerName: ProgressDemo.routeName,
      buildRouter: (BuildContext context) => ProgressDemo()
    ),
    DemosPoint(
      title: 'radio',
      icon: Icons.category,
      category: Form,
      routerName:  RadioDemo.routerName,
      buildRouter: (BuildContext context) => RadioDemo()
    ),
  ];
  return demosPoints;
}
// 所有的demo点
final List<DemosPoint> AllPoints = getDemosPoints();
// 所有的demo分类
final Set<DemoCategory> DemoCategorys = AllPoints.map((DemosPoint value) => value.category).toSet();

final Map<DemoCategory, List<DemosPoint>> CategoryToDemos = new Map.fromIterable(
    DemoCategorys,
    value: (category) {
      return AllPoints.where((DemosPoint demo) =>  demo.category == category).toList();
    }
);

DemoCategory getCatetoryByName (String name) {
  DemoCategory category;
  DemoCategorys.forEach((v)  {
    if (v.name == name) {
      category = v;
    }
  });
  return category;
}