import 'package:flutter/material.dart';
import 'package:material_bottom_nav_bar/material_bottom_nav_bar.dart';
import 'package:material_bottom_nav_bar/model/item_model.dart';
import 'package:material_bottom_nav_bar_example/reusable/CustomPageBuilder.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _current_page = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _page_changer(index: _current_page),
      bottomNavigationBar: MaterialBottomNavBar(
        currentIndex: _current_page,
        onTap: (int index) => {
          setState(() {
            _current_page = index;
          })
        },
        cardColor: Colors.white,
        cardShadowColor: Colors.white,
        cardElevation: 20,
        items: [
          NavBarItem(
              selectedIcon: const Icon(Icons.home, color: Colors.black),
              unSelectedIcon: const Icon(Icons.home_outlined),
              label: 'Home'),
          NavBarItem(
              selectedIcon:
                  const Icon(Icons.search_outlined, color: Colors.black),
              unSelectedIcon: const Icon(Icons.search_outlined),
              label: 'Search'),
          NavBarItem(
              selectedIcon: const Icon(
                Icons.shopping_cart,
                color: Colors.black,
              ),
              unSelectedIcon: const Icon(Icons.shopping_cart_outlined),
              label: 'Cart'),
          NavBarItem(
              selectedIcon: const Icon(Icons.person, color: Colors.black),
              unSelectedIcon: const Icon(Icons.person_outline),
              label: 'Profile')
        ],
      ),
    );
  }

  Widget _page_changer({required int index}) {
    switch (index) {
      case 0:
        return CustomPageBuilder(label: 'Home', iconData: Icons.home);
        break;
      case 1:
        return CustomPageBuilder(label: 'Search', iconData: Icons.search);
        break;
      case 2:
        return CustomPageBuilder(label: 'Cart', iconData: Icons.shopping_cart);
        break;
      case 3:
        return CustomPageBuilder(label: 'Profile', iconData: Icons.person);
        break;
      default:
        return const SizedBox();
    }
  }
}
