import 'package:flutter/material.dart';
import 'package:mobile_nft_marketplace/models/collection.dart';
import 'package:mobile_nft_marketplace/widgets/hot_collections/hot_collection_card.dart';

class HotCollectionList extends StatelessWidget {
  const HotCollectionList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> collections = <Widget>[];
    for (int i = 0; i < hotCollections.length; i++) {
      collections.add(
        HotCollectionCard(
            name: hotCollections[i].name, image: hotCollections[i].image, nftType: hotCollections[i].nftType),
      );
    }

    return Row(
      children: collections,
    );
  }
}
