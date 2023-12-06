# Compare Flutter Tab navigation

For write an event calendar

## BottomNavigationBar

###　概要

- シンプルな BottomNavigationBar 実装例。 -　 material design 初期モデル

### 特徴

- Option が多くて Costom がしやすい
- 個人的にはとても美しいと思います！

### GIF

Inset the GIF

### コード

```
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
```

```
Overthan4items
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

```

### Add type

```

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.shifting,
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
        ],
      ),
    );
  }
}
```

````
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
}```
````
