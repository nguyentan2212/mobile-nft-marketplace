import 'package:flutter/material.dart';
import 'package:mobile_nft_marketplace/app_state.dart';
import 'package:mobile_nft_marketplace/utils/colors.dart';
import 'package:provider/provider.dart';

class BottomBarItem extends StatelessWidget {
  const BottomBarItem(
      {Key? key, required this.icon, required this.selectedIcon, required this.title, required this.index})
      : super(key: key);

  final Widget icon;
  final Widget selectedIcon;
  final String title;
  final int index;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 56,
      height: 62,
      child: Consumer<AppState>(
        builder: (context, state, child) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                splashRadius: 1,
                padding: const EdgeInsets.all(4.0),
                splashColor: purple[100],
                icon: state.bottomBarSelectedIndex == index ? selectedIcon : icon,
                onPressed: () => state.bottomBarChangeIndex(index),
              ),
              Text(
                title,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: state.bottomBarSelectedIndex == index ? purple[900] : Colors.white,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
