import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:mobile_nft_marketplace/app_state.dart';

class NFTDetailScreen extends StatelessWidget {
  const NFTDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var state = context.read<AppState>();

    return Center(
      child: GestureDetector(
        onTap: (() => Navigator.pop(context)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('NFT Detail Screen'),
            Text(state.selectedItem!.name),
            Text(
              state.selectedItem!.price.toString(),
            ),
          ],
        ),
      ),
    );
  }
}
