import 'package:flutter/material.dart';
import 'package:livingliquidz/dawa/screens/account/account_screen.dart';
import 'package:livingliquidz/dawa/screens/cart/cart_screen.dart';
import 'package:livingliquidz/dawa/screens/dashboard/dawa_favourite_screen.dart';
import 'package:livingliquidz/dawa/screens/explore_screen.dart';
import 'package:livingliquidz/dawa/screens/home/homedawa_screen.dart';

import '../favourite_screen.dart';

class NavigatorItem {
  final String label;
  final String iconPath;
  final int index;
  final Widget screen;

  NavigatorItem(this.label, this.iconPath, this.index, this.screen);
}

List<NavigatorItem> navigatorItems = [
  NavigatorItem("Shop", "assets/icons/shop_icon.svg", 0, HomedawaScreen()),
  NavigatorItem("Explore", "assets/icons/explore_icon.svg", 1, ExploreScreen()),
  NavigatorItem("Cart", "assets/icons/cart_icon.svg", 2, DawaFavouriteScreen()),
  NavigatorItem("Favourite", "assets/icons/favourite_icon.svg", 3,
      FavoriteProductsScreen()),
  NavigatorItem("Account", "assets/icons/account_icon.svg", 4, AccountScreen()),
];
