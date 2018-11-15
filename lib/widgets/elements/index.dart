import 'Form/index.dart' as Form;
import 'Frame/index.dart' as Frame;

List getWidgets() {
  List result = [];
  result.addAll(Form.getWidgets());
  result.addAll(Frame.getWidgets());
  return result;
}