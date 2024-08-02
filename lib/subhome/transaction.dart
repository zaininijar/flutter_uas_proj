import 'package:flutter/material.dart';
import 'package:flutter_uas_proj/my_product.dart';
import 'package:flutter_uas_proj/theme/app_colors.dart';

List electronicData = [
  {
    "id": 20,
    "name": "Air Purifier",
    "description": "HEPA air purifier with quiet operation.",
    "image":
        "https://images.tokopedia.net/img/cache/200-square/VqbcmM/2023/3/31/7cf0a63f-a177-412a-a755-c719d92ec7d4.jpg.webp?ect=4g",
    "price": 129.990,
  },
  {
    "id": 21,
    "name": "Smart Thermostat",
    "description": "Smart thermostat compatible with voice assistants.",
    "image":
        "https://images.tokopedia.net/img/cache/200-square/VqbcmM/2024/5/20/bd8a06b0-f2fa-4276-b1f8-d4a25cb8c365.png.webp?ect=4g",
    "price": 149.990,
  },
  {
    "id": 22,
    "name": "Robot Vacuum",
    "description": "Robot vacuum cleaner with smart mapping technology.",
    "image":
        "https://images.tokopedia.net/img/cache/200-square/product-1/2020/3/24/766663/766663_1c4c0d11-ff9d-4f83-878d-a7591f73497d_800_800.webp?ect=4g",
    "price": 299.990,
  },
  {
    "id": 23,
    "name": "Noise Machine",
    "description": "White noise machine with multiple sound options.",
    "image":
        "https://images.tokopedia.net/img/cache/200-square/VqbcmM/2023/8/4/b6dfda9b-2256-445c-b37b-b98ce3ec0f0b.jpg.webp?ect=4g",
    "price": 39.990,
  },
  {
    "id": 24,
    "name": "Coffee Maker",
    "description": "Single-serve coffee maker with reusable filter.",
    "image":
        "https://images.tokopedia.net/img/cache/200-square/hDjmkQ/2023/10/26/8afca28b-5ff8-498b-8b08-e8aecd104c20.jpg.webp?ect=4g",
    "price": 59.990,
  },
  {
    "id": 25,
    "name": "Smart Doorbell",
    "description": "Smart doorbell with video recording and motion detection.",
    "image":
        "https://images.tokopedia.net/img/cache/200-square/VqbcmM/2024/3/4/59f2a85d-0e3c-4a63-87c5-8cc2e6c22964.jpg.webp?ect=4g",
    "price": 89.990,
  },
];

class Transaction extends StatelessWidget {
  const Transaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: AppColors.g500,
        title: const Text(
          "Transaction",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        child: ListView.builder(
          itemCount: electronicData.length,
          itemBuilder: (context, index) {
            final item = electronicData[index];
            return ListProduct(
              item['id'],
              item['name'],
              item['description'],
              item['image'],
              item['price'],
            );
          },
        ),
      ),
    );
  }
}
