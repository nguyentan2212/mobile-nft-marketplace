import 'package:flutter/material.dart';
import 'package:mobile_nft_marketplace/models/collection.dart';

class HotCollectionCard extends StatelessWidget {
  const HotCollectionCard({Key? key, required this.collection}) : super(key: key);

  final Collection collection;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      alignment: Alignment.center,
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.grey[800],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage("assets/images/collections/${collection.image}"),
              ),
            ),
          ),
          Text(
            collection.name,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Colors.grey[200],
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            collection.nftType,
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey[400],
            ),
          ),
        ],
      ),
    );
  }
}
