import 'package:flutter/material.dart';

final class HomeCustomNavigationBar extends StatelessWidget {
  const HomeCustomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(items: const [
      BottomNavigationBarItem(icon: Icon(Icons.dangerous), label: 'Home'),
      BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
    ]);
  }
}

@immutable
final class VeliNAvigationBar extends BottomNavigationBar {
  VeliNAvigationBar({super.key})
      : super(items: const [
          BottomNavigationBarItem(icon: Icon(Icons.dangerous), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: 'Settings'),
        ]);
}
