import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mobile_nft_marketplace/models/collection.dart';
import 'package:mobile_nft_marketplace/models/nft_item.dart';

class AppState extends ChangeNotifier {
  NFTItem? selectedItem;
  Collection? selectedCollection;
  int selectedScreen = 0;
  int bottomBarSelectedIndex = 0;

  void selectItem(NFTItem item) {
    selectedItem = item;
    selectedScreen = 4;
    notifyListeners();
  }

  void selectCollection(Collection collection) {
    selectedCollection = collection;
    notifyListeners();
  }

  void changeScreen(int newIndex) {
    selectedScreen = newIndex;
    notifyListeners();
  }

  void bottomBarChangeIndex(int newIndex) {
    bottomBarSelectedIndex = newIndex;
    debugPrint("bottom index change");
    notifyListeners();
  }
}
