import 'Button/index.dart' as Button;
import 'Text/index.dart' as Text;
import 'Input/index.dart' as Input;
import 'CheckBox/index.dart' as CheckBox;

List getWidgets() {
  List result = [];
  result.addAll(Button.widgetPoints);
  result.addAll(Text.widgetPoints);
  result.addAll(Input.widgetPoints);
  result.addAll(CheckBox.widgetPoints);
  return result;
}