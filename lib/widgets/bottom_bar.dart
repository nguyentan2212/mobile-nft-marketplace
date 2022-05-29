import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mobile_nft_marketplace/utils/colors.dart';
import 'package:mobile_nft_marketplace/widgets/bottom_bar_item.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: lightBlack,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          BottomBarItem(
            icon: SvgPicture.asset(
              "assets/icons/home.svg",
              color: greyscale[50],
            ),
            selectedIcon: SvgPicture.asset(
              "assets/icons/home_filled.svg",
              color: purple[900],
            ),
            title: "Home",
            index: 0,
          ),
          BottomBarItem(
            icon: SvgPicture.asset(
              "assets/icons/search.svg",
              color: greyscale[50],
            ),
            selectedIcon: SvgPicture.asset(
              "assets/icons/search_filled.svg",
              color: purple[900],
            ),
            title: "Search",
            index: 1,
          ),
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: SizedBox(
              height: 46,
              child: FloatingActionButton(
                onPressed: () {},
                child: const Icon(Icons.add),
              ),
            ),
          ),
          BottomBarItem(
            icon: SvgPicture.asset(
              "assets/icons/chart_square_bar.svg",
              color: greyscale[50],
            ),
            selectedIcon: SvgPicture.asset(
              "assets/icons/chart_square_bar_filled.svg",
              color: purple[900],
            ),
            title: "Static",
            index: 2,
          ),
          BottomBarItem(
            icon: SvgPicture.asset(
              "assets/icons/user.svg",
              color: greyscale[50],
            ),
            selectedIcon: SvgPicture.asset(
              "assets/icons/user_filled.svg",
              color: purple[900],
            ),
            title: "Profile",
            index: 3,
          ),
        ],
      ), //notche margin between floating button and bottom appbar
    );
  }
}
