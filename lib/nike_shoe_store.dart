import 'package:flutter/material.dart';
import 'package:nike_shoe_store/presentation/screens/home_screen.dart';
import 'package:nike_shoe_store/presentation/screens/item_screen.dart';

class NikeShoeStore extends StatelessWidget {
  const NikeShoeStore({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Nike Shoe Store',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFCEDDEE),
      ),
      routes: {
        "/" : (context) => const HomeScreen(),
        "HomeScreen" : (context) => const HomeScreen(),
        "ItemScreen" : (context) => const ItemScreen(),
      },
    );
  }
}
