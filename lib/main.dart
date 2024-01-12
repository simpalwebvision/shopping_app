import 'package:flutter/material.dart';

import 'package:livingliquidz/providers/cart.dart';
import 'package:livingliquidz/providers/favorite.dart';
import 'package:livingliquidz/screens/splash_screen.dart';

import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => FavoriteProvider()),
        ChangeNotifierProvider(create: (context) => DawaFavoriteProvider()),
        ChangeNotifierProvider(create: (context) => CartProvider()),
      ],
      child: const MaterialApp(
          debugShowCheckedModeBanner: false, home: SplashScreen()),
    );
  }
}
