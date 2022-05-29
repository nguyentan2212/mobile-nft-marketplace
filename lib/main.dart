import 'package:flutter/material.dart';
import 'package:mobile_nft_marketplace/app_state.dart';
import 'package:mobile_nft_marketplace/screens/home/home_screen.dart';
import 'package:mobile_nft_marketplace/screens/live_bidding/live_bidding_screen.dart';
import 'package:mobile_nft_marketplace/utils/colors.dart';
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
        initialRoute: '/',
        routes: {
          // When navigating to the "/" route, build the FirstScreen widget.
          '/': (context) => const HomeScreen(),
          // When navigating to the "/second" route, build the SecondScreen widget.
          '/liveBidding': (context) => const LiveBiddingScreen(),
        },
      ),
    );
  }
}
