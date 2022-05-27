import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mobile_nft_marketplace/utils/colors.dart';

class NftCard extends StatefulWidget {
  const NftCard({Key? key, this.width = 225, this.height = 245}) : super(key: key);

  final double width;
  final double height;

  @override
  State<NftCard> createState() => _NftCardState();
}

class _NftCardState extends State<NftCard> {
  @override
  Widget build(BuildContext context) {
    double imageHeight = widget.height * 0.52;

    return Container(
      width: widget.width,
      height: widget.height,
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
          Positioned(
            right: 60,
            top: imageHeight - 17,
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: const Color(0xFF39415A),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 5.33,
                    offset: const Offset(0.0, 2.67),
                  ),
                ],
              ),
              width: 35,
              height: 35,
              child: Center(
                child: SvgPicture.asset(
                  "assets/icons/share.svg",
                  color: greyscale[700],
                  width: 16,
                ),
              ),
            ),
          ),
          Positioned(
            right: 18,
            top: imageHeight - 17,
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: const Color(0xFF39415A),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 5.33,
                    offset: const Offset(0.0, 2.67),
                  ),
                ],
              ),
              width: 35,
              height: 35,
              child: Center(
                child: SvgPicture.asset(
                  "assets/icons/heart.svg",
                  color: greyscale[700],
                  width: 16,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
