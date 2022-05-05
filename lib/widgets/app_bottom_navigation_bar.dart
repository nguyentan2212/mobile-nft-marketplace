import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppBottomNavigationBar extends StatefulWidget {
  final Function(int) onPressed;
  const AppBottomNavigationBar({Key? key, required this.onPressed}) : super(key: key);
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
          widget.onPressed(newIndex);
        },
        destinations: [
          NavigationDestination(
            icon: const Icon(CupertinoIcons.home),
            selectedIcon: Icon(
              CupertinoIcons.home,
              color: Colors.grey[800],
            ),
            label: "Home",
          ),
          NavigationDestination(
            icon: const Icon(CupertinoIcons.compass),
            selectedIcon: Icon(
              CupertinoIcons.compass,
              color: Colors.grey[800],
            ),
            label: "Explore",
          ),
          NavigationDestination(
            icon: const Icon(CupertinoIcons.person),
            selectedIcon: Icon(
              CupertinoIcons.person,
              color: Colors.grey[800],
            ),
            label: "Profile",
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
