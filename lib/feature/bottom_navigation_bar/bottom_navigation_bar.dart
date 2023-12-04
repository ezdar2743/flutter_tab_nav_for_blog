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
    )
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
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
        ],
      ),
    );
  }
}
