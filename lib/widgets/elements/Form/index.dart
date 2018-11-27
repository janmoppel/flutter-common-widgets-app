import 'Button/index.dart' as Button;
import 'Text/index.dart' as Text;
import 'Input/index.dart' as Input;
import 'Radio/index.dart' as Radio;

List getWidgets() {
  List result = [];
  result.addAll(Button.widgetPoints);
  result.addAll(Text.widgetPoints);
  result.addAll(Input.widgetPoints);
  result.addAll(Radio.widgetPoints);
  return result;
}