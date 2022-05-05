import 'package:flutter/material.dart';
import 'package:mobile_nft_marketplace/models/collection.dart';
import 'package:mobile_nft_marketplace/widgets/hot_collections/hot_collection_card.dart';

class HotCollectionsList extends StatefulWidget {
  const HotCollectionsList({Key? key}) : super(key: key);

  @override
  State<HotCollectionsList> createState() => _HotCollectionsListState();
}

class _HotCollectionsListState extends State<HotCollectionsList> {
  final PageController pageController = PageController(viewportFraction: 0.5);
  int currentPage = 0;

  @override
  void initState() {
    super.initState();

    pageController.addListener(
      () {
        int position = pageController.page!.round();

        if (currentPage != position) {
          {
            setState(() {
              currentPage = position;
            });
          }
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> collections = <Widget>[];
    for (int i = 0; i < hotCollections.length; i++) {
      collections.add(
        HotCollectionCard(
          collection: hotCollections[i],
        ),
      );
    }
    return SizedBox(
      height: 180,
      child: PageView(
        controller: pageController,
        padEnds: false,
        physics: const BouncingScrollPhysics(),
        children: collections,
      ),
    );
  }
}
