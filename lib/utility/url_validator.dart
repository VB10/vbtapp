import 'package:flutter/foundation.dart';
import 'package:vbtapp/utility/validator.dart';

@immutable
final class URLValidator extends Validator {
  final RegExp urlRegex = RegExp(
    r"(https?|ftp)://[^\s/$.?#].[^\s]*",
    caseSensitive: false,
    multiLine: false,
  );

  URLValidator(super.input);

  @override
  bool validate() {
    return urlRegex.hasMatch(input);
  }
}
