import 'package:flutter/material.dart';
import 'package:mobile_nft_marketplace/models/nft_item.dart';
import 'package:mobile_nft_marketplace/widgets/nft_item_card.dart';

class HotItemsList extends StatefulWidget {
  const HotItemsList({Key? key}) : super(key: key);

  @override
  State<HotItemsList> createState() => _HotItemsListState();
}

class _HotItemsListState extends State<HotItemsList> {
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
    for (int i = 0; i < hotItems.length; i++) {
      collections.add(
        NFTItemCard(
          item: hotItems[i],
        ),
      );
    }
    return SizedBox(
      height: 280,
      child: PageView(
        controller: pageController,
        padEnds: false,
        physics: const BouncingScrollPhysics(),
        children: collections,
      ),
    );
  }
}
