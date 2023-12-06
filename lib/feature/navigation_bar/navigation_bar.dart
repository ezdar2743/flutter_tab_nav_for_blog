import 'package:flutter/material.dart';
import 'package:tab_nav/constants/fontSizes.dart';

class NavigationBarUi extends StatefulWidget {
  const NavigationBarUi({super.key});

  @override
  State<NavigationBarUi> createState() => _NavigationBarUiState();
}

class _NavigationBarUiState extends State<NavigationBarUi> {
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
        'Message',
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
      bottomNavigationBar: NavigationBar(
          onDestinationSelected: _onTab,
          selectedIndex: _selectedIndex,
          destinations: const [
            NavigationDestination(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            NavigationDestination(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            NavigationDestination(
              icon: Badge(
                label: Text('2'),
                child: Icon(Icons.message),
              ),
              label: 'Search',
            ),
          ]),
    );
  }
}
