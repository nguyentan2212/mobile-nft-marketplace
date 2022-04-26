import 'package:flutter/material.dart';
import 'package:mobile_nft_marketplace/screens/home_screen.dart';
import 'package:mobile_nft_marketplace/widgets/app_bottom_navigation_bar.dart';

class AppLayout extends StatelessWidget {
  const AppLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.grey[800],
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                  "assets/images/logo.png",
                )),
              ),
            ),
          ),
          title: TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.grey[600],
              prefixIcon: const Icon(Icons.search),
              suffixIcon: IconButton(
                icon: const Icon(Icons.clear),
                onPressed: () {
                  /* Clear the search field */
                },
              ),
              hintText: 'Search...',
              border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(22),
                ),
              ),
            ),
          ),
        ),
        body: const HomeScreen(),
        bottomNavigationBar: const AppBottomNavigationBar(),
      ),
    );
  }
}
