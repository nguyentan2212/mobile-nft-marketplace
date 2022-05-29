import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mobile_nft_marketplace/app_state.dart';
import 'package:mobile_nft_marketplace/screens/home/widgets/ads_banner.dart';
import 'package:mobile_nft_marketplace/screens/home/widgets/category_list.dart';
import 'package:mobile_nft_marketplace/screens/home/widgets/live_bidding_list.dart';
import 'package:mobile_nft_marketplace/utils/colors.dart';
import 'package:mobile_nft_marketplace/widgets/bottom_bar.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: black,
        appBar: AppBar(
          backgroundColor: black,
          elevation: 0,
          title: const Text("STECH"),
          actions: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(16.0)),
                  color: purple[900],
                ),
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    SvgPicture.asset(
                      'assets/icons/ethereum.svg',
                      color: Colors.white,
                      height: 12,
                    ),
                    const SizedBox(width: 8),
                    const Text(
                      '0.1345',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 12.0, left: 24.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Padding(
                  padding: EdgeInsets.only(bottom: 24.0),
                  child: CategoryList(),
                ),
                // Banner
                Padding(
                  padding: EdgeInsets.only(right: 24.0, bottom: 24.0),
                  child: AdsBanner(),
                ),
                LiveBiddingList(),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Consumer<AppState>(
          builder: (context, value, child) => const BottomBar(),
        ),
      ),
    );
  }
}
