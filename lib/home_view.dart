import 'package:flutter/material.dart';
import 'package:vbtapp/widget/home_custom_navigation_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Column(
        children: [Text('data'), Text('data'), Expanded(child: _PageView())],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed('/login');
        },
      ),
      bottomNavigationBar: VeliNAvigationBar(),
    );
  }
}

class _PageView extends StatelessWidget {
  const _PageView();

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        Container(
          color: Colors.red,
        ),
        Container(
          color: Colors.blue,
        ),
        Container(
          color: Colors.green,
        ),
      ],
    );
  }
}
