import 'package:flutter/material.dart';
import 'package:livingliquidz/Explore/category_screen.dart';
import 'package:livingliquidz/profile/profile_screen.dart';

import 'package:livingliquidz/screens/cart.dart';
import 'package:livingliquidz/screens/home.dart';
import 'package:livingliquidz/screens/likes.dart';

class NavigatorItem {
  final String label;
  final String iconPath;
  final int index;
  final Widget screen;

  NavigatorItem(this.label, this.iconPath, this.index, this.screen);
}

List<NavigatorItem> navigatorItems = [
  NavigatorItem("Shop", "assets/icons/shop_icon.svg", 0, HomeScreen()),
  NavigatorItem(
      "Explore", "assets/icons/explore_icon.svg", 1, CategoryScreen()),
  NavigatorItem("Cart", "assets/icons/cart_icon.svg", 2, CartScreen()),
  NavigatorItem(
      "Favourite", "assets/icons/favourite_icon.svg", 3, LikesScreen()),
  NavigatorItem("Account", "assets/icons/account_icon.svg", 4, ProfileScreen()),
];
