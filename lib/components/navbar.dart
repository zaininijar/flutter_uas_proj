import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_uas_proj/theme/app_colors.dart';
import 'package:remixicon/remixicon.dart';

class Navbar extends StatelessWidget implements PreferredSizeWidget {
  final AppBar appBar;
  final String pageName;

  const Navbar({super.key, required this.appBar, required this.pageName});

  @override
  Size get preferredSize => Size.fromHeight(appBar.preferredSize.height);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        pageName,
        style: const TextStyle(color: Colors.white),
      ),
      backgroundColor: AppColors.g500,
      iconTheme: const IconThemeData(color: Colors.white),
      actions: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 16),
          child: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/profile');
            },
            style: const ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(Colors.white),
            ),
            icon: const Icon(
              Remix.user_line,
              color: AppColors.g500,
              size: 18,
            ),
          ),
        )
      ],
    );
  }
}
