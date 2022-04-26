import 'package:flutter/material.dart';
import 'package:mobile_nft_marketplace/widgets/hot_collections/hot_collections_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView(
        primary: true,
        children: const [
          Text(
            "Hot collections",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 16,
          ),
          HotCollectionList(),
        ],
      ),
    );
  }
}
