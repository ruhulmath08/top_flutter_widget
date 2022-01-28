import 'package:flutter/material.dart';

class BottomNavigationBarScreen extends StatefulWidget {
  final String title;

  const BottomNavigationBarScreen({Key? key, required this.title}) : super(key: key);
  @override
  _BottomNavigationBarScreenState createState() => _BottomNavigationBarScreenState();
}

class _BottomNavigationBarScreenState extends State<BottomNavigationBarScreen> {
  int _currentIndex = 0;
  List<Widget> body = const [
    Icon(Icons.home),
    Icon(Icons.menu),
    Icon(Icons.shopping_cart_rounded),
    Icon(Icons.person),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: body[_currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (int newIndex) {
          setState(() {
            _currentIndex = newIndex;
          });
        },
        items: const [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: 'Menu',
            icon: Icon(Icons.menu),
          ),
          BottomNavigationBarItem(
            label: 'Cart',
            icon: Icon(Icons.shopping_cart_rounded),
          ),
          BottomNavigationBarItem(
            label: 'Person',
            icon: Icon(Icons.person),
          ),
        ],
      ),
    );
  }
}
