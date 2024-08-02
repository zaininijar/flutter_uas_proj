import 'package:flutter/material.dart';
import 'package:flutter_uas_proj/components/navbar.dart';
import 'package:flutter_uas_proj/components/sidebar.dart';
import 'package:flutter_uas_proj/my_product.dart';
import 'package:flutter_uas_proj/theme/app_colors.dart';
import 'package:remixicon/remixicon.dart';

List listData = [
  {
    "id": "550",
    "title": "Keranjang",
    "path": "/home/carts",
    "icon": Remix.shopping_cart_2_line,
    "titleColor": Colors.indigoAccent,
    "iconColor": const Color.fromARGB(255, 0, 156, 161)
  },
  {
    "id": "913",
    "title": "Transaksi",
    "path": "/home/transactions",
    "icon": Remix.survey_line,
    "titleColor": const Color.fromARGB(255, 115, 77, 255),
    "iconColor": Colors.indigoAccent,
  },
  {
    "id": "878",
    "title": "Dikirim",
    "path": "/home/shipped",
    "icon": Remix.truck_line,
    "titleColor": Colors.blueAccent,
    "iconColor": Colors.purpleAccent
  },
  {
    "id": "092",
    "title": "Wishlist",
    "path": "/home/wishlist",
    "icon": Remix.heart_line,
    "titleColor": Colors.purpleAccent,
    "iconColor": Colors.blueAccent
  },
  {
    "id": "158",
    "title": "Electronic",
    "path": "/home/electronics",
    "icon": Remix.device_line,
    "titleColor": const Color.fromARGB(255, 255, 68, 21),
    "iconColor": const Color.fromARGB(255, 0, 174, 151),
  },
  {
    "id": "507",
    "title": "Food",
    "path": "/home/foods",
    "icon": Remix.restaurant_line,
    "titleColor": const Color.fromARGB(255, 195, 0, 139),
    "iconColor": Colors.redAccent,
  },
];

class ListProduct extends StatefulWidget {
  final int id;
  final String name;
  final String description;
  final String image;
  final double price;
  final int quantity;

  const ListProduct(this.id, this.name, this.description, this.image,
      this.price, this.quantity,
      {super.key});

  @override
  State<StatefulWidget> createState() => _ListProduct();
}

class _ListProduct extends State<ListProduct> {
  late int qty = widget.quantity;
  late double totalPrice = qty * widget.price;

  void _incrementCounter() {
    setState(() {
      qty++;
      totalPrice = qty * widget.price;
    });
  }

  void _decrementCounter() {
    setState(() {
      qty--;
      totalPrice = qty * widget.price;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return ProductDetail(widget.id, widget.name, widget.description,
                  widget.image, widget.price);
            },
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 12),
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
        height: 80,
        decoration: BoxDecoration(
          border: Border.all(
            width: 1,
            color: Colors.black12,
          ),
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(80),
              child: Image.network(widget.image),
            ),
            const SizedBox(
              width: 12,
            ),
            Flexible(
              flex: 10,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Text(
                    "Rp ${totalPrice.toStringAsFixed(totalPrice.truncateToDouble() == totalPrice ? 0 : 2)}",
                    style: const TextStyle(overflow: TextOverflow.fade),
                  ),
                ],
              ),
            ),
            const Spacer(),
            Row(
              children: [
                IconButton(
                  color: Colors.deepPurpleAccent,
                  onPressed: _decrementCounter,
                  icon: const Icon(
                    Icons.remove,
                    size: 12,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  '$qty',
                  style: const TextStyle(
                    fontSize: 18.0,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                IconButton(
                  color: Colors.deepPurpleAccent,
                  onPressed: _incrementCounter,
                  icon: const Icon(
                    Icons.add,
                    size: 12,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CardList extends StatelessWidget {
  const CardList(this.id, this.title, this.path, this.icon, this.titleColor,
      this.iconColor,
      {super.key});

  final String id;
  final String title;
  final String path;
  final IconData icon;
  final Color titleColor;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, path);
      },
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.g100,
          border: Border.all(width: 1, color: AppColors.g300),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: iconColor,
              size: 28,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 12,
                color: titleColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Navbar(
        pageName: "Home",
        appBar: AppBar(),
      ),
      drawer: const Sidebar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              color: AppColors.g500,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Zen Electronic",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    const Text(
                      "Toko Elektronik Terlengkap \n untuk Semua Kebutuhan Anda",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ElevatedButton.icon(
                      icon: const Icon(
                        Remix.search_line,
                        color: Colors.pinkAccent,
                        size: 16,
                      ),
                      onPressed: () {},
                      label: const Text(
                        "Yuk cari keperluanmu",
                        style: TextStyle(
                          color: Colors.pinkAccent,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              transform: Matrix4.translationValues(0, -20, 0),
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              height: 600,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: GridView.count(
                crossAxisCount: 3,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                children: List.generate(listData.length, (index) {
                  return CardList(
                    listData[index]['id'],
                    listData[index]['title'],
                    listData[index]['path'],
                    listData[index]['icon'],
                    listData[index]['titleColor'],
                    listData[index]['iconColor'],
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
