import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mobile_nft_marketplace/utils/colors.dart';

class NftCard extends StatefulWidget {
  const NftCard({Key? key, this.width, this.height}) : super(key: key);

  final double? width;
  final double? height;

  @override
  State<NftCard> createState() => _NftCardState();
}

class _NftCardState extends State<NftCard> {
  bool isLiked = false;

  void like() {
    setState(() {
      isLiked = !isLiked;
    });
  }

  @override
  Widget build(BuildContext context) {
    double height = widget.height ?? MediaQuery.of(context).size.height;
    double width = widget.width ?? MediaQuery.of(context).size.width;

    double imageHeight = height < 270 ? height * 0.46 : height * 0.5;
    Widget heartIcon = isLiked
        ? SvgPicture.asset(
            "assets/icons/heart_filled.svg",
            color: red,
            width: 16,
          )
        : SvgPicture.asset(
            "assets/icons/heart.svg",
            color: greyscale[700],
            width: 16,
          );

    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(16.0),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 4.0,
            offset: const Offset(0.0, 2.0),
          ),
        ],
        color: lightBlack,
      ),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: widget.width,
                height: imageHeight,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(16.0)),
                  image: DecorationImage(
                    image: AssetImage(
                      "assets/images/item1.jpg",
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12.0, left: 12.0),
                child: Text(
                  "Shapire Cole",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: greyscale[700],
                    height: 1.66,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12.0, right: 12.0, top: 4.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "The Space 305",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        height: 1.77,
                        color: Colors.white,
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SvgPicture.asset(
                          "assets/icons/ethereum.svg",
                          width: 6,
                          height: 10,
                          color: green,
                        ),
                        const SizedBox(width: 4),
                        const Text(
                          '0.47 ETH',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: green,
                            fontSize: 12,
                            height: 1.6666666666666667,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        primary: grey,
                        elevation: 1,
                        shape: const StadiumBorder(),
                      ),
                      child: Text(
                        "3h 12m 46s Left",
                        style: TextStyle(
                          color: greyscale[700],
                          fontSize: 12,
                          height: 1.6666666666666667,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      onPressed: () {},
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        primary: purple[900],
                        elevation: 1,
                        shape: const StadiumBorder(),
                      ),
                      child: const Text(
                        "Place a bid",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          height: 1.6666666666666667,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      onPressed: () {},
                    )
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            right: 60,
            top: imageHeight - 17,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(4.0),
                primary: grey,
                elevation: 1,
                shape: const CircleBorder(),
              ),
              child: SvgPicture.asset(
                "assets/icons/share.svg",
                color: greyscale[700],
                width: 16,
              ),
              onPressed: () {},
            ),
          ),
          Positioned(
            right: 18,
            top: imageHeight - 17,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(4.0),
                primary: grey,
                elevation: 1,
                shape: const CircleBorder(),
              ),
              child: heartIcon,
              onPressed: like,
            ),
          ),
        ],
      ),
    );
  }
}
