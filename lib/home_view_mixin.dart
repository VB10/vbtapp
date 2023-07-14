import 'package:flutter/material.dart';

mixin class IHomeView {}

mixin HomeStateless on IHomeView, StatelessWidget {
  /// Navigate to the home screen.
  void navigateHomeScreen() {}
}

class HomeModule {
  final String _userName;

  HomeModule(String userName) : _userName = userName;
}

// sealed vs final
sealed class VeliModule extends HomeModule {
  VeliModule(super.userName);
}

sealed class Ali {}

class Ahmet extends Ali {}

class Veli extends Ali {}

final class M {}

final class Home {}
