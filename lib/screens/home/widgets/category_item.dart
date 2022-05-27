import 'package:flutter/material.dart';
import 'package:mobile_nft_marketplace/utils/colors.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({Key? key, required this.title, required this.imageName}) : super(key: key);

  final String imageName;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
        color: lightBlack,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
              width: 16,
              height: 16,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(imageName), fit: BoxFit.fitWidth),
              )),
          const SizedBox(width: 8),
          Text(
            title,
            textAlign: TextAlign.left,
            style: TextStyle(
              color: greyscale[50],
              fontSize: 14,
              letterSpacing: 0,
            ),
          ),
        ],
      ),
    );
  }
}
