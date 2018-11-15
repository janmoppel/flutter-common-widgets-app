import 'spacing/index.dart' as Spacing;
import 'Expanded/index.dart' as Expanded;
import 'Axis/index.dart' as Axis;
import 'Table/index.dart' as Table;

List getWidgets() {
  List result = [];
  result.addAll(Spacing.widgetPoints);
  result.addAll(Expanded.widgetPoints);
  result.addAll(Axis.widgetPoints);
  result.addAll(Table.widgetPoints);
  return result;
}