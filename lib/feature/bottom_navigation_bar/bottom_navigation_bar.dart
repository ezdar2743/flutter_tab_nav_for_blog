import 'package:flutter/material.dart';
import 'package:tab_nav/constants/fontSizes.dart';

class BottomNavigationBarUi extends StatefulWidget {
  const BottomNavigationBarUi({super.key});

  @override
  State<BottomNavigationBarUi> createState() => _BottomNavigationBarUiState();
}

class _BottomNavigationBarUiState extends State<BottomNavigationBarUi> {
  int _selectedIndex = 0;

  final _screens = [
    const Center(
      child: Text(
        'HOME',
        style: TextStyle(fontSize: FontSizes.xxl),
      ),
    ),
    const Center(
      child: Text(
        'SEARCH',
        style: TextStyle(fontSize: FontSizes.xxl),
      ),
    ),
    const Center(
      child: Text(
        'ADD',
        style: TextStyle(fontSize: FontSizes.xxl),
      ),
    ),
    const Center(
      child: Text(
        'MYPAGE',
        style: TextStyle(fontSize: FontSizes.xxl),
      ),
    ),
    const Center(
      child: Text(
        'SEARCH',
        style: TextStyle(fontSize: FontSizes.xxl),
      ),
    ),
  ];

  void _onTab(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onTab,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Colors.green),
          BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
              backgroundColor: Colors.red),
          BottomNavigationBarItem(
              icon: Icon(Icons.add),
              label: 'Add',
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              icon: Icon(Icons.supervised_user_circle),
              label: 'Mypage',
              backgroundColor: Colors.yellow),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Setting',
              backgroundColor: Colors.pink),
        ],
      ),
    );
  }
}
