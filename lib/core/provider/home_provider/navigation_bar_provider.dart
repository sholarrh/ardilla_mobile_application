import 'package:flutter/foundation.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';

class BottomBarNav extends ChangeNotifier{
  static int selectedIndex = 0;
  static late  PersistentTabController controller;

  void onItemTapped(int index) {
    selectedIndex = index;
    notifyListeners();
  }
}