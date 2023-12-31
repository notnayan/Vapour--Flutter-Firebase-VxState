import 'package:catalog_app/core/store.dart';
import 'package:catalog_app/pages/cart_page.dart';
import 'package:catalog_app/pages/home_page.dart';
import 'package:catalog_app/pages/login_page.dart';
import 'package:catalog_app/pages/profile_page.dart';
import 'package:catalog_app/pages/wishlists_page.dart';
import 'package:catalog_app/utils/routes.dart';
import 'package:catalog_app/widgets/themes.dart';
import 'package:flutter/material.dart';
import 'package:vxstate/vxstate.dart';

void main() {
  runApp(VxState(store: MyStore(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(),
      darkTheme: MyTheme.darkTheme(),
      routes: {
        "/": (context) => const HomePage(),
        Routes.homeRoute: (context) => const HomePage(),
        Routes.loginRoute: (context) => const LoginPage(),
        Routes.profileRoute: (context) => const ProfilePage(),
        Routes.wishlistRoute: (context) => const WishlistPage(),
        Routes.cartRoute: (context) => const CartPage(),
      },
    );
  }
}
