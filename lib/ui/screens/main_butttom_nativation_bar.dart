import 'package:e_commerce/ui/screens/home_screen.dart';
import 'package:e_commerce/ui/utils/app_colors.dart';
import 'package:flutter/material.dart';

import 'categories_screen.dart';

class MainBottomNavigationBar extends StatefulWidget {
  const MainBottomNavigationBar({Key? key}) : super(key: key);

  @override
  State<MainBottomNavigationBar> createState() => _MainBottomNavigationBarState();
}

class _MainBottomNavigationBarState extends State<MainBottomNavigationBar> {

  int _selectedIndex = 0;

  final List<Widget>screens = const [
     HomeScreen(),
     CategoryScreen(),
     HomeScreen(),
     HomeScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_selectedIndex],
      bottomNavigationBar:BottomNavigationBar(
        currentIndex: _selectedIndex,
        selectedItemColor: AppColors.primaryColor,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        onTap: (index){
          _selectedIndex = index;
          setState(() {});
        },
        items:  const [
          BottomNavigationBarItem(icon: Icon(Icons.home,size: 30),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.widgets_outlined,size: 30),label: 'Category'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart,size: 30),label: 'Card',),
          BottomNavigationBarItem(icon: Icon(Icons.card_giftcard,size: 30),label: 'Wish'),
        ],
      ),
    );
  }
}
