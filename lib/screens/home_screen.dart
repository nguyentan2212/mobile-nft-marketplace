import 'package:flutter/material.dart';
import 'package:mobile_nft_marketplace/widgets/hot_collections/hot_collections_list.dart';
import 'package:mobile_nft_marketplace/widgets/hot_items/hot_items_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[800],
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 30,
              width: 30,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                  "assets/images/logo.png",
                )),
              ),
            ),
            const Text("STECH"),
          ],
        ),
      ),
      body: Container(
        color: Colors.grey[400],
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            primary: true,
            children: const [
              Text(
                "Trending collections",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              HotCollectionsList(),
              Text(
                "Hot items",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              HotItemsList(),
            ],
          ),
        ),
      ),
    );
  }
}
