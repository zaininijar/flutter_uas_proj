import 'package:flutter/material.dart';
import 'package:flutter_uas_proj/theme/app_colors.dart';
import 'package:remixicon/remixicon.dart';

class Navbar extends StatelessWidget implements PreferredSizeWidget {
  final AppBar appBar;

  const Navbar({super.key, required this.appBar});

  @override
  Size get preferredSize => Size.fromHeight(appBar.preferredSize.height);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text(
        'Elektronik',
        style: TextStyle(color: Colors.white),
      ),
      backgroundColor: AppColors.g500,
      iconTheme: const IconThemeData(color: Colors.white),
      actions: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 16),
          child: const Icon(Remix.notification_line),
        )
      ],
    );
  }
}
