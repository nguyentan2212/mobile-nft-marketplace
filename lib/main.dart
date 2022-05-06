import 'package:flutter/material.dart';
import 'package:mobile_nft_marketplace/app_state.dart';
import 'package:mobile_nft_marketplace/screens/explore_screen.dart';
import 'package:mobile_nft_marketplace/screens/home_screen.dart';
import 'package:mobile_nft_marketplace/screens/more_screen.dart';
import 'package:mobile_nft_marketplace/screens/nft_detail_screen.dart';
import 'package:mobile_nft_marketplace/screens/profile_screen.dart';
import 'package:mobile_nft_marketplace/widgets/app_bottom_navigation_bar.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AppState(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Mobile NFT Marketplace',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: SafeArea(
          child: Scaffold(
            backgroundColor: Colors.white,
            body: Consumer<AppState>(
              builder: (context, state, child) {
                return Navigator(
                  onPopPage: ((route, result) => route.didPop(result)),
                  pages: [
                    if (state.selectedScreen == 0)
                      const MaterialPage(
                        child: HomeScreen(),
                      )
                    else if (state.selectedScreen == 1)
                      const MaterialPage(
                        child: ExploreScreen(),
                      )
                    else if (state.selectedScreen == 2)
                      const MaterialPage(
                        child: ProfileScreen(),
                      )
                    else if (state.selectedScreen == 3)
                      const MaterialPage(
                        child: MoreScreen(),
                      )
                    else if (state.selectedScreen == 4)
                      const MaterialPage(
                        child: NFTDetailScreen(),
                      )
                  ],
                );
              },
            ),
            bottomNavigationBar: Consumer<AppState>(
              builder: (context, state, child) {
                return AppBottomNavigationBar(
                  onPressed: state.changeScreen,
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
