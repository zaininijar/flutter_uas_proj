import 'package:flutter/material.dart';
import 'package:flutter_uas_proj/components/navbar.dart';
import 'package:flutter_uas_proj/components/sidebar.dart';
import 'package:flutter_uas_proj/my_product.dart';

List dataGallery = [
  {
    "id": 1,
    "name": "Wireless Mouse",
    "description": "Ergonomic wireless mouse with adjustable DPI settings.",
    "image":
        "https://images.tokopedia.net/img/cache/300-square/VqbcmM/2024/7/2/1a7ceba8-33c1-4509-a436-1830867de08c.jpg",
    "price": 125.990,
  },
  {
    "id": 2,
    "name": "Mechanical Keyboard",
    "description": "RGB backlit mechanical keyboard with customizable keys.",
    "image":
        "https://images.tokopedia.net/img/cache/200-square/VqbcmM/2022/5/10/2b041006-0495-4e98-a3f1-ae577023baee.jpg.webp?ect=4g",
    "price": 189.990,
  },
  {
    "id": 3,
    "name": "Bluetooth Headphones",
    "description":
        "Noise-cancelling over-ear headphones with long battery life.",
    "image":
        "https://images.tokopedia.net/img/cache/200-square/VqbcmM/2022/9/11/1ae88303-37fc-42a4-8a83-fe19006d5fbb.jpg",
    "price": 159.990,
  },
  {
    "id": 4,
    "name": "Smartphone Stand",
    "description": "Adjustable smartphone stand compatible with all models.",
    "image":
        "https://images.tokopedia.net/img/cache/200-square/VqbcmM/2023/7/15/e6a4c937-1c27-4209-b293-c6bd7d2cd04f.jpg",
    "price": 110.990,
  },
  {
    "id": 5,
    "name": "USB-C Hub",
    "description": "Multi-port USB-C hub with HDMI, USB 3.0, and Ethernet.",
    "image":
        "https://images.tokopedia.net/img/cache/200-square/product-1/2020/8/13/58824740/58824740_cb6000be-f9b0-44d8-a815-d44eac58f387_800_800.webp?ect=4g",
    "price": 134.990,
  },
  {
    "id": 6,
    "name": "Gaming Chair",
    "description":
        "Comfortable gaming chair with lumbar support and adjustable height.",
    "image":
        "https://images.tokopedia.net/img/cache/200-square/hDjmkQ/2024/6/2/51e97720-0b47-4b7d-8ac7-228d3ac154a5.jpg.webp?ect=4g",
    "price": 1149.990,
  },
  {
    "id": 7,
    "name": "External Hard Drive",
    "description": "1TB portable external hard drive with fast data transfer.",
    "image":
        "https://images.tokopedia.net/img/cache/200-square/product-1/2020/6/1/43314915/43314915_08c2f67a-9c71-4c0b-bf31-fe989db30db1_640_640",
    "price": 149.990,
  },
  {
    "id": 8,
    "name": "Fitness Tracker",
    "description": "Water-resistant fitness tracker with heart rate monitor.",
    "image":
        "https://images.tokopedia.net/img/cache/200-square/VqbcmM/2023/3/17/1bb0c5ba-1ee6-44ce-b9b1-a84b3c157162.jpg",
    "price": 139.990,
  },
  {
    "id": 9,
    "name": "Smart LED Bulbs",
    "description":
        "Pack of 4 smart LED bulbs compatible with voice assistants.",
    "image":
        "https://images.tokopedia.net/img/cache/300-square/VqbcmM/2024/7/8/6569b260-a7eb-4a7c-9d59-5a33e834547e.jpg",
    "price": 129.990,
  },
  {
    "id": 10,
    "name": "Wireless Charger",
    "description":
        "Fast wireless charging pad compatible with multiple devices.",
    "image":
        "https://images.tokopedia.net/img/cache/300-square/VqbcmM/2023/9/15/157182fc-7e74-4d3c-9d49-6abbfb67ae8c.jpg",
    "price": 119.990,
  },
  {
    "id": 11,
    "name": "Portable Projector",
    "description": "Compact portable projector with HDMI and USB inputs.",
    "image":
        "https://images.tokopedia.net/img/cache/200-square/VqbcmM/2024/6/9/8f9db7ed-760d-464d-871b-c45368cae4fb.jpg.webp?ect=4g",
    "price": 349.990,
  },
  {
    "id": 12,
    "name": "Smartwatch",
    "description": "Smartwatch with fitness tracking and notification alerts.",
    "image":
        "https://images.tokopedia.net/img/cache/200-square/VqbcmM/2024/4/23/ef131bcf-e710-4134-9adc-e2fcbd038516.jpg.webp?ect=4g",
    "price": 249.990,
  },
  {
    "id": 13,
    "name": "Action Camera",
    "description": "4K action camera with waterproof housing and accessories.",
    "image":
        "https://images.tokopedia.net/img/cache/200-square/VqbcmM/2024/3/8/eadab274-91c9-4f69-9f4d-be20487566ce.jpg.webp?ect=4g",
    "price": 299.990,
  },
  {
    "id": 14,
    "name": "Electric Toothbrush",
    "description": "Rechargeable electric toothbrush with multiple modes.",
    "image":
        "https://images.tokopedia.net/img/cache/200-square/VqbcmM/2023/12/21/30f31b79-e7cb-4599-819a-077a6465e6ef.jpg.webp?ect=4g",
    "price": 89.990,
  },
  {
    "id": 15,
    "name": "Laptop Stand",
    "description": "Adjustable laptop stand with cooling fan.",
    "image":
        "https://images.tokopedia.net/img/cache/200-square/VqbcmM/2023/12/9/b8ba1b49-b24c-4c9a-ae47-7b477196d662.png.webp?ect=4g",
    "price": 79.990,
  },
  {
    "id": 16,
    "name": "Electric Kettle",
    "description": "Stainless steel electric kettle with auto shut-off.",
    "image":
        "https://images.tokopedia.net/img/cache/200-square/VqbcmM/2023/12/9/b8ba1b49-b24c-4c9a-ae47-7b477196d662.png.webp?ect=4g",
    "price": 49.990,
  },
  {
    "id": 17,
    "name": "Photo Printer",
    "description": "Compact photo printer with wireless connectivity.",
    "image":
        "https://images.tokopedia.net/img/cache/200-square/VqbcmM/2023/12/21/30f31b79-e7cb-4599-819a-077a6465e6ef.jpg.webp?ect=4g",
    "price": 199.990,
  },
  {
    "id": 18,
    "name": "Webcam",
    "description": "1080p HD webcam with built-in microphone.",
    "image":
        "https://images.tokopedia.net/img/cache/200-square/VqbcmM/2023/12/6/a0a02e0e-df3c-444f-bee7-69f5c86a2a96.png.webp?ect=4g",
    "price": 59.990,
  },
  {
    "id": 19,
    "name": "Bluetooth Speaker",
    "description": "Portable Bluetooth speaker with high-quality sound.",
    "image":
        "https://images.tokopedia.net/img/cache/200-square/VqbcmM/2024/7/24/d4a54444-edac-48b1-8f2c-fb60ad2dd2ab.jpg.webp?ect=4g",
    "price": 79.990,
  },
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

class Gallery extends StatelessWidget {
  const Gallery({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Navbar(
        pageName: "Gallery",
        appBar: AppBar(),
      ),
      drawer: const Sidebar(),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          children: List.generate(
            dataGallery.length,
            (index) {
              final item = dataGallery[index];
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return ProductDetail(
                          item['id'],
                          item['name'],
                          item['description'],
                          item['image'],
                          item['price'],
                        );
                      },
                    ),
                  );
                },
                child: Container(
                  margin: const EdgeInsets.only(top: 10),
                  child: Image.network(
                    item['image'],
                    fit: BoxFit.cover,
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
