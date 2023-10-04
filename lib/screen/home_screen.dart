import 'package:flutter/material.dart';
import 'package:to_do_app/Widgets/appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  void _handleMenuButtonTap() {
    print('Menu button tapped!');
  }

  void _kebabButton() {
    print('Kebab button tapped!');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: _handleMenuButtonTap,
          icon: const Icon(Icons.menu),
        ),
        backgroundColor: Colors.black,
        actions: [
          IconButton(
            onPressed: _kebabButton,
            icon: const Icon(
              Icons.more_vert,
            ),
          )
        ],
      ),
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.black,
              Colors.black,
            ],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
        ),
        child: const NavBar(),
      ),
    );
  }
}
