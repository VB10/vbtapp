import 'package:vbtapp/utility/validator.dart';

final class PointValidator extends Validator {
  const PointValidator(super.input);

  @override

  /// if point is greater than 80, it will return true
  bool validate() {
    final point = int.tryParse(input);

    if (point == null) return false;
    if (point > 80) {
      return true;
    }

    return false;
  }
}
