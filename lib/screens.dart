import 'package:flutter/material.dart';

class MyBottomNavigationBar extends StatelessWidget {
  final ValueChanged<int> onTap;

  MyBottomNavigationBar({required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 16), // Adjust the padding as needed
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.8),
              blurRadius: 10,
              offset: Offset(0, 1), // Adjust the offset for desired perspective
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: BottomNavigationBar(
            onTap: onTap,
            backgroundColor: Colors.transparent,
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
          ),
        ),
      ),
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
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          for (int i = 0; i < 50; i++)
            ListTile(
              title: Text('Item $i'),
            ),
        ],
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          for (int i = 0; i < 50; i++)
            ListTile(
              title: Text('Item $i'),
            ),
        ],
      ),
    );
  }
}

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          for (int i = 0; i < 50; i++)
            ListTile(
              title: Text('Item $i'),
            ),
        ],
      ),
    );
  }
}

class Page4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          for (int i = 0; i < 50; i++)
            ListTile(
              title: Text('Item $i'),
            ),
        ],
      ),
    );
  }
}
