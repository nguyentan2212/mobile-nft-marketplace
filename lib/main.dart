import 'package:flutter/material.dart';
import 'package:mobile_nft_marketplace/screens/explore_screen.dart';
import 'package:mobile_nft_marketplace/screens/home_screen.dart';
import 'package:mobile_nft_marketplace/screens/more_screen.dart';
import 'package:mobile_nft_marketplace/screens/profile_screen.dart';
import 'package:mobile_nft_marketplace/widgets/app_bottom_navigation_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _screenIndex = 0;

  void changeScreen(int newIndex) {
    setState(() {
      _screenIndex = newIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    var screens = [
      const HomeScreen(),
      const ExploreScreen(),
      const ProfileScreen(),
      const MoreScreen(),
    ];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mobile NFT Marketplace',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: screens[_screenIndex],
          bottomNavigationBar: AppBottomNavigationBar(
            onPressed: changeScreen,
          ),
        ),
      ),
    );
  }
}
