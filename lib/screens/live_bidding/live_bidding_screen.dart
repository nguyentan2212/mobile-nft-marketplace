import 'package:flutter/material.dart';
import 'package:mobile_nft_marketplace/utils/colors.dart';
import 'package:mobile_nft_marketplace/widgets/nft_card.dart';

class LiveBiddingScreen extends StatelessWidget {
  const LiveBiddingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      appBar: AppBar(
        backgroundColor: black,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 24.0),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(2.0),
              primary: grey,
              elevation: 1,
              shape: const CircleBorder(),
            ),
            child: Icon(
              Icons.chevron_left,
              color: greyscale[700],
            ),
            onPressed: () => Navigator.pop(context),
          ),
        ),
        title: const Text(
          "Live Bidding",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            height: 1.33,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 24.0,
          vertical: 12.0,
        ),
        child: ListView(
          children: const [
            NftCard(
              height: 270,
            ),
            SizedBox(
              height: 24.0,
            ),
            NftCard(
              height: 270,
            ),
            SizedBox(
              height: 24.0,
            ),
            NftCard(
              height: 270,
            ),
          ],
        ),
      ),
    );
  }
}
