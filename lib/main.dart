import 'package:flutter/material.dart';

import 'screens.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
   final ValueNotifier<int> _selectedIndex = ValueNotifier<int>(0);@override
  Widget build(BuildContext context) {
    return Scaffold(
      
        body: ValueListenableBuilder<int>(
        valueListenable: _selectedIndex,
        builder: (context, index, _) => buildScreen(index),
      ),
      bottomNavigationBar: MyBottomNavigationBar(onTap:(index)
      {
        _selectedIndex.value = index;
      }),
    );
  }
}
