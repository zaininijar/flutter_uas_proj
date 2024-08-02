import 'package:flutter/material.dart';
import 'package:flutter_uas_proj/about.dart';
import 'package:flutter_uas_proj/gallery.dart';
import 'package:flutter_uas_proj/home.dart';
import 'package:flutter_uas_proj/my_product.dart';
import 'package:flutter_uas_proj/theme/app_colors.dart';
import 'package:remixicon/remixicon.dart';

class Sidebar extends Drawer {
  const Sidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: const BoxDecoration(
              color: AppColors.g500,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(width: 2, color: Colors.white),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  padding: const EdgeInsets.all(2),
                  margin: const EdgeInsets.only(right: 10),
                  width: 80,
                  height: 80,
                  child: CircleAvatar(
                    radius: 50.0,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50.0),
                      child: Image.network(
                          'https://avatars.githubusercontent.com/u/90563272?s=400&u=da73c09c30960eca0e411da0fdf43e4ee6c29e3b&v=4'),
                    ),
                  ),
                ),
                const Text(
                  'ZeenApp',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
                const Text(
                  'zaininijar@gmail.com',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                )
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Remix.home_4_line),
            title: const Text('Home'),
            onTap: () {
              Navigator.pop(context);

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const HomeScreen();
                  },
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(Remix.stack_line),
            title: const Text('My Product'),
            onTap: () {
              Navigator.pop(context);

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const MyProduct();
                  },
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(Remix.layout_2_line),
            title: const Text('Gallery'),
            onTap: () {
              Navigator.pop(context);

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const Gallery();
                  },
                ),
              );
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Remix.info_i),
            title: const Text('About app'),
            onTap: () {
              Navigator.pop(context);

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return About();
                  },
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
