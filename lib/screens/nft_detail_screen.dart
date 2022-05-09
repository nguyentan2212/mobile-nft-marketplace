import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile_nft_marketplace/widgets/sliver_widgets/sliver_app_bar_with_image.dart';
import 'package:provider/provider.dart';
import 'package:mobile_nft_marketplace/app_state.dart';

class NFTDetailScreen extends StatelessWidget {
  const NFTDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var state = context.read<AppState>();

    return Scaffold(
      backgroundColor: Colors.grey[800],
      body: CustomScrollView(
        slivers: [
          SliverAppBarWithImage(
            image: Image.asset("assets/images/items/${state.selectedItem!.image}"),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  color: index.isOdd ? Colors.white : Colors.black12,
                  height: 100.0,
                  child: Center(
                    child: Text('$index', textScaleFactor: 5),
                  ),
                );
              },
              childCount: 10,
            ),
          ),
          const SliverAppBar(
            pinned: true,
            expandedHeight: 160.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('SliverAppBar'),
              background: FlutterLogo(),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  color: index.isOdd ? Colors.white : Colors.black12,
                  height: 100.0,
                  child: Center(
                    child: Text('${index + 10}', textScaleFactor: 5),
                  ),
                );
              },
              childCount: 10,
            ),
          ),
        ],
      ),
    );
  }
}
