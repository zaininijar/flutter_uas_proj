import 'package:flutter/material.dart';
import 'package:flutter_uas_proj/about.dart';
import 'package:flutter_uas_proj/gallery.dart';
import 'package:flutter_uas_proj/home.dart';
import 'package:flutter_uas_proj/my_product.dart';
import 'package:flutter_uas_proj/profile.dart';
import 'package:flutter_uas_proj/subhome/cart.dart';
import 'package:flutter_uas_proj/subhome/electronic.dart';
import 'package:flutter_uas_proj/subhome/food.dart';
import 'package:flutter_uas_proj/subhome/shipped.dart';
import 'package:flutter_uas_proj/subhome/transaction.dart';
import 'package:flutter_uas_proj/subhome/wishlist.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Zen Electronic',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: GoogleFonts.nunitoSansTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/my_product': (context) => const MyProduct(),
        '/gallery': (context) => const Gallery(),
        '/about': (context) => const About(),
        '/profile': (context) => const Profile(),
        '/home/carts': (context) => const Cart(),
        '/home/transactions': (context) => const Transaction(),
        '/home/shipped': (context) => const Shipped(),
        '/home/wishlist': (context) => const Wishlist(),
        '/home/electronics': (context) => const Electronic(),
        '/home/foods': (context) => const Food(),
      },
    );
  }
}
