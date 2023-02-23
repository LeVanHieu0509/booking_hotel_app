import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:meal_app/screens/categories_sreen.dart';
import 'package:meal_app/screens/favorites_Screen.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  final List<Map<String, Object>> _pages = [
    {'page': CategoryScreen(), "title": "Categories"},
    {'page': FavoriteScreen(), 'title': 'Your Favorite'}
  ];

  int _selectedPageIndex = 0;

  void _SelectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Meals'),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(icon: Icon(Icons.category), text: 'Categories'),
              Tab(
                icon: Icon(Icons.star),
                // text: _pages[_selectedPageIndex]['title'],
              ),
            ],
          ),
        ),
        // body: _pages[_selectedPageIndex]['page'],
        bottomNavigationBar: BottomNavigationBar(
          onTap: _SelectPage,
          unselectedItemColor: Colors.white,
          selectedItemColor: Theme.of(context).accentColor,
          currentIndex: _selectedPageIndex,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.category), label: "Categories"),
            BottomNavigationBarItem(icon: Icon(Icons.star), label: "Star")
          ],
          backgroundColor: Theme.of(context).primaryColor,
        ),
      ),
    );
  }
}
