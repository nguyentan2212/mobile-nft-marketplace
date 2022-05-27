import 'package:flutter/material.dart';
import 'package:mobile_nft_marketplace/utils/colors.dart';
import 'package:mobile_nft_marketplace/widgets/nft_card.dart';

class LiveBiddingList extends StatelessWidget {
  const LiveBiddingList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 24.0, bottom: 12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Text(
                "Live Bidding",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
              Text(
                "See more",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: greyscale[700],
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 245,
          child: ListView(
            physics: const ClampingScrollPhysics(),
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            children: const [
              NftCard(),
              SizedBox(
                width: 16.0,
              ),
              NftCard(),
              SizedBox(
                width: 16.0,
              ),
              NftCard(),
              SizedBox(
                width: 16.0,
              ),
            ],
          ),
        )
      ],
    );
  }
}
