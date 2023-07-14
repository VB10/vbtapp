import 'package:flutter/material.dart';

@immutable
abstract class Validator {
  const Validator(this.input);

  bool validate();

  final String input;
}
