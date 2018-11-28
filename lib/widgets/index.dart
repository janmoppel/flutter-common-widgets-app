import 'elements/index.dart' as elements;

class WidgetDemoList {
  WidgetDemoList();
  List getDemos() {
    print('elements.getWidgets():${elements.getWidgets()}');
    return elements.getWidgets();
  }
}