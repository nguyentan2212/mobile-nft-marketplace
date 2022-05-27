import 'package:flutter/material.dart';
import 'package:mobile_nft_marketplace/screens/home/widgets/category_item.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView(
        physics: const ClampingScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        children: const <Widget>[
          CategoryItem(
            title: 'Art',
            imageName: 'assets/images/Image1277.png',
          ),
          SizedBox(width: 12),
          CategoryItem(
            title: 'Sport',
            imageName: 'assets/images/Image1334.png',
          ),
          SizedBox(width: 12),
          CategoryItem(
            title: 'Music',
            imageName: 'assets/images/Image1203.png',
          ),
          SizedBox(width: 12),
          CategoryItem(
            title: 'Photography',
            imageName: 'assets/images/Image1760.png',
          ),
        ],
      ),
    );
  }
}
