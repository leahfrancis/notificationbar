import 'package:flutter/material.dart';

class MyBottomNavigationBar extends StatelessWidget {
  final ValueChanged<int> onTap;

  MyBottomNavigationBar({required this.onTap});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: onTap,
      items: [
        BottomNavigationBarItem(
          icon: Image.asset('assets/logo4.png', width: 34, height: 34),
          label: 'item 1',
        ),
        BottomNavigationBarItem(
          icon: Image.asset('assets/logo2.png', width: 34, height: 34),
          label: 'item 2',
        ),
        BottomNavigationBarItem(
          icon: Image.asset('assets/logo3.png', width: 34, height: 34),
          label: 'item 3',
        ),
        BottomNavigationBarItem(
          icon: Image.asset('assets/logo1.png', width: 34, height: 34),
          label: 'item 4',
        ),
      ],
    );
  }
}

Widget buildScreen(int index) {
  switch (index) {
    case 0:
      return Page1();
    case 1:
      return Page2();
    case 2:
      return Page3();
    case 3:
      return Page4();
    default:
      return Container(); 
  }
}

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Center(
        child: Text(
          'Page 1',
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Center(
        child: Text(
          'Page 2',
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
      ),
    );
  }
}

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: Center(
        child: Text(
          'Page 3',
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
      ),
    );
  }
}

class Page4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange,
      child: Center(
        child: Text(
          'Page 4',
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
      ),
    );
  }
}
