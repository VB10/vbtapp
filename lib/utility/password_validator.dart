import 'package:flutter/foundation.dart';
import 'package:vbtapp/utility/validator.dart';

@immutable
final class PasswordValidator extends Validator {
  const PasswordValidator(super.input);

  @override
  bool validate() {
    return input.length > 6;
  }
}
