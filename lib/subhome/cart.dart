import 'package:flutter/material.dart';
import 'package:flutter_uas_proj/home.dart';
import 'package:flutter_uas_proj/theme/app_colors.dart';

List cartData = [
  {
    "id": 1,
    "name": "Wireless Mouse",
    "description": "Ergonomic wireless mouse with adjustable DPI settings.",
    "image":
        "https://images.tokopedia.net/img/cache/300-square/VqbcmM/2024/7/2/1a7ceba8-33c1-4509-a436-1830867de08c.jpg",
    "price": 125.990,
    "quantity": 5,
  },
  {
    "id": 2,
    "name": "Mechanical Keyboard",
    "description": "RGB backlit mechanical keyboard with customizable keys.",
    "image":
        "https://images.tokopedia.net/img/cache/200-square/VqbcmM/2022/5/10/2b041006-0495-4e98-a3f1-ae577023baee.jpg.webp?ect=4g",
    "price": 189.990,
    "quantity": 3,
  },
  {
    "id": 3,
    "name": "Bluetooth Headphones",
    "description":
        "Noise-cancelling over-ear headphones with long battery life.",
    "image":
        "https://images.tokopedia.net/img/cache/200-square/VqbcmM/2022/9/11/1ae88303-37fc-42a4-8a83-fe19006d5fbb.jpg",
    "price": 159.990,
    "quantity": 2,
  },
];

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: AppColors.g500,
        title: const Text(
          "Cart",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        child: ListView.builder(
          itemCount: cartData.length,
          itemBuilder: (context, index) {
            final item = cartData[index];
            return ListProduct(
              item['id'],
              item['name'],
              item['description'],
              item['image'],
              item['price'],
              item['quantity'],
            );
          },
        ),
      ),
    );
  }
}
