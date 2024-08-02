import 'package:flutter/material.dart';
import 'package:flutter_uas_proj/my_product.dart';
import 'package:flutter_uas_proj/theme/app_colors.dart';

List electronicData = [
  {
    "id": 20,
    "name": "Cheese Almond Coffee",
    "description": "HEPA air purifier with quiet operation.",
    "image":
        "https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/628f1cda-4dae-4669-a809-9596ca18e827_93111417-9334-4180-b1f3-0b54cde40cd5_Go-Biz_20190317_133757.jpeg?auto=format",
    "price": 19.990,
  },
  {
    "id": 21,
    "name": "Cheese Matcha",
    "description": "Smart thermostat compatible with voice assistants.",
    "image":
        "https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/c5dd023c-afa1-49ac-9663-cbcfbf05af4e_9cd0c397-9510-46b7-9a30-32dae3fc5936_Go-Biz_20190317_133739.jpeg?auto=format",
    "price": 14.990,
  },
  {
    "id": 22,
    "name": "Durian Coffee",
    "description": "Robot vacuum cleaner with smart mapping technology.",
    "image":
        "https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/f7537de9-6936-44d1-a653-7632f636e47a_15fa20eb-3ca1-47bf-ae11-2f45c5ac6238_Go-Biz_20190224_211849.jpeg?auto=format",
    "price": 29.990,
  },
  {
    "id": 23,
    "name": "Kebab + Keju",
    "description": "White noise machine with multiple sound options.",
    "image":
        "https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/2da859fe-f354-4240-886a-4f209bc9f282_4ad6244b-e955-423e-8c7c-53f46530a05c.jpg?auto=format",
    "price": 39.990,
  },
  {
    "id": 24,
    "name": "Kebab Tanpa Sayur",
    "description": "Single-serve coffee maker with reusable filter.",
    "image":
        "https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/bf10a865-963b-4166-8bcb-1c374a6e497b_7b8b0c20-e92a-4e2a-aaac-f030d02115e1.jpg?auto=format",
    "price": 59.990,
  },
];

class Food extends StatelessWidget {
  const Food({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: AppColors.g500,
        title: const Text(
          "Food",
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
