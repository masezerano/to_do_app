import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  void _handleAddButtonTap() {
    print('Add button tapped!');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.orange,
        onPressed: _handleAddButtonTap,
        child: const Icon(
          Icons.add,
          size: 30,
          color: Colors.white,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.check_box_outlined, color: Colors.orange),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.check_box_outlined,
              color: Colors.orange,
            ),
            label: '',
          ),
        ],
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
    );
  }
}
