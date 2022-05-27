import 'package:flutter/material.dart';
import 'package:mobile_nft_marketplace/app_state.dart';
import 'package:mobile_nft_marketplace/screens/home/home_screen.dart';
import 'package:mobile_nft_marketplace/utils/colors.dart';
import 'package:mobile_nft_marketplace/widgets/bottom_bar.dart';
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
          primaryColor: purple[900],
          backgroundColor: black,
        ),
        home: SafeArea(
          child: Consumer<AppState>(
            builder: (context, state, child) {
              return const Scaffold(
                body: HomeScreen(),
                bottomNavigationBar: BottomBar(),
              );
            },
          ),
        ),
      ),
    );
  }
}
