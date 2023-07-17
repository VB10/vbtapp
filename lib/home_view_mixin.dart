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

final class AliView extends StatefulWidget {
  const AliView({super.key});

  @override
  State<AliView> createState() => _AliViewState();
}

final class _AliViewState extends State<AliView> with _AliMixin {
  @override
  Widget build(BuildContext context) {
    ValueListenableBuilder<int>(
      valueListenable: _counter,
      builder: (BuildContext context, int value, Widget? child) {
        return Container();
      },
    );
    return const Placeholder();
  }
}

mixin _AliMixin on State<AliView> {
  final ValueNotifier<int> _counter = ValueNotifier<int>(0);

  void functionName(List args) {
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
  }
}
