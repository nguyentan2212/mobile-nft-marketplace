import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mobile_nft_marketplace/utils/colors.dart';

class AdsBanner extends StatelessWidget {
  const AdsBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 132,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(16.0),
        ),
        image: DecorationImage(
          image: AssetImage("assets/images/splash.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          Container(
            height: 132,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              gradient: LinearGradient(
                colors: [
                  lightBlack,
                  lightBlack.withOpacity(0.8),
                  lightBlack.withOpacity(0),
                ],
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                tileMode: TileMode.clamp,
                stops: const [0.4, 0.6, 1.0],
              ),
            ),
          ),
          const Positioned(
            top: 20.0,
            left: 24.0,
            width: 183,
            child: Text(
              "Collect and Sell extraordinary NFTs",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                height: 1.33,
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
            bottom: 20.0,
            left: 24.0,
            width: 95.0,
            child: Row(
              children: [
                SvgPicture.asset(
                  "assets/icons/play.svg",
                  color: Colors.white,
                  height: 14.0,
                  width: 14.0,
                ),
                const SizedBox(
                  width: 10.0,
                ),
                const Text(
                  "Learn more",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
