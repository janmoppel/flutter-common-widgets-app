import 'elements/index.dart' as elements;
import 'components/index.dart' as components;

class WidgetDemoList {
  WidgetDemoList();

  List getDemos() {
    List result = [];
    result.addAll(elements.getWidgets());
    result.addAll(components.getWidgets());
    return result;
  }
}
