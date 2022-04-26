import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppBottomNavigationBar extends StatefulWidget {
  const AppBottomNavigationBar({Key? key}) : super(key: key);

  @override
  State<AppBottomNavigationBar> createState() => _AppBottomNavigationBarState();
}

class _AppBottomNavigationBarState extends State<AppBottomNavigationBar> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return NavigationBarTheme(
      data: NavigationBarThemeData(
          backgroundColor: Colors.grey[800],
          indicatorColor: Colors.yellow,
          labelTextStyle: MaterialStateProperty.all(
            TextStyle(
              color: Colors.grey[400],
            ),
          ),
          iconTheme: MaterialStateProperty.all(
            IconThemeData(
              color: Colors.grey[400],
            ),
          )),
      child: NavigationBar(
        animationDuration: const Duration(seconds: 1),
        selectedIndex: _selectedIndex,
        onDestinationSelected: (int newIndex) {
          setState(() {
            _selectedIndex = newIndex;
          });
        },
        destinations: [
          NavigationDestination(
            icon: const Icon(CupertinoIcons.arrow_right_arrow_left),
            selectedIcon: Icon(
              CupertinoIcons.arrow_right_arrow_left,
              color: Colors.grey[800],
            ),
            label: "Exchange",
          ),
          NavigationDestination(
            icon: const Icon(CupertinoIcons.square_stack),
            selectedIcon: Icon(
              CupertinoIcons.square_stack,
              color: Colors.grey[800],
            ),
            label: "NFT",
          ),
          NavigationDestination(
            icon: const Icon(CupertinoIcons.money_dollar),
            selectedIcon: Icon(
              CupertinoIcons.money_dollar,
              color: Colors.grey[800],
            ),
            label: "Earn",
          ),
          NavigationDestination(
            icon: const Icon(CupertinoIcons.ellipsis),
            selectedIcon: Icon(
              CupertinoIcons.ellipsis,
              color: Colors.grey[800],
            ),
            label: "More",
          ),
        ],
      ),
    );
  }
}
