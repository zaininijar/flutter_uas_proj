import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_uas_proj/components/navbar.dart';
import 'package:flutter_uas_proj/components/sidebar.dart';
import 'package:flutter_uas_proj/theme/app_colors.dart';
import 'package:remixicon/remixicon.dart';
import 'package:url_launcher/url_launcher.dart';

class About extends StatefulWidget {
  const About({super.key});
  @override
  State<StatefulWidget> createState() => _About();
}

class _About extends State<About> {
  final Map<String, String> personalInformation = {
    'name': 'Ahmad Zaini Nijar',
    'description':
        'I am currently pursuing my studies in Informatics Engineering, immersing myself in the fascinating world of technology. Simultaneously, I am utilizing my skill',
    'email': 'zaininijar7610@gmail.com',
    'no_bp': '22101152630093',
    'facebook': 'https://facebook.com/zaininijar',
    'github': 'https://github.com/zaininijar',
    'instagram': 'https://instagram.com/zaini.nijar',
  };

  Future<void> _launchUrl(url) async {
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Navbar(
        pageName: "About",
        appBar: AppBar(),
      ),
      drawer: const Sidebar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 400,
                  color: AppColors.g500,
                ),
                Positioned(
                  bottom: 150,
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(width: 2, color: AppColors.g100),
                        borderRadius: BorderRadius.circular(75)),
                    child: const CircleAvatar(
                      radius: 75,
                      backgroundImage: NetworkImage(
                        'https://avatars.githubusercontent.com/u/90563272?s=400&u=da73c09c30960eca0e411da0fdf43e4ee6c29e3b&v=4',
                      ),
                    ),
                  ),
                ),
                Positioned(
                  right: 0,
                  left: 0,
                  bottom: 0,
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      padding: const EdgeInsets.only(top: 28, bottom: 4),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20.0),
                          topLeft: Radius.circular(20.0),
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            personalInformation['name']!,
                            style: const TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            personalInformation['description']!,
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              decoration: const BoxDecoration(color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 24),
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: AppColors.g200,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(width: 1, color: AppColors.g500),
                      ),
                      child: const Text(
                        'Informasi Kontak',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    ListTile(
                      leading: const Icon(Remix.mail_line),
                      title: Text(personalInformation['email']!),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: const Icon(Remix.asterisk),
                      title: Text(personalInformation['no_bp']!),
                      onTap: () {},
                    ),
                    const SizedBox(height: 24),
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: AppColors.g200,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(width: 1, color: AppColors.g500),
                      ),
                      child: const Text(
                        'Sosial Media',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    ListTile(
                      leading: const Icon(Remix.facebook_line),
                      title: const Text('Facebook'),
                      onTap: () => _launchUrl(
                        Uri.parse(
                          personalInformation['facebook']!,
                        ),
                      ),
                    ),
                    ListTile(
                      leading: const Icon(Remix.github_line),
                      title: const Text('Github'),
                      onTap: () => _launchUrl(
                        Uri.parse(
                          personalInformation['github']!,
                        ),
                      ),
                    ),
                    ListTile(
                      leading: const Icon(Remix.instagram_line),
                      title: const Text('Instagram'),
                      onTap: () => _launchUrl(
                        Uri.parse(
                          personalInformation['instagram']!,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
