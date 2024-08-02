import 'package:flutter/material.dart';
import 'package:flutter_uas_proj/theme/app_colors.dart';
import 'package:remixicon/remixicon.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    final Map<String, String> personalInformation = {
      'name': 'Zaini/Nijar',
      'full_name': 'Ahmad Zaini Nijar',
      'description':
          'I am currently pursuing my studies in Informatics Engineering, immersing myself in the fascinating world of technology. Simultaneously, I am utilizing my skill',
      'email': 'zaininijar7610@gmail.com',
      'no_bp': '22101152630093',
      'facebook': 'https://facebook.com/zaininijar',
      'github': 'https://github.com/zaininijar',
      'instagram': 'https://instagram.com/zaini.nijar',
      'status': 'Aktif',
      'program_studi': 'Teknik Informatika',
      'jenjang': 'Sarjana',
      'phone_number': '+6282286947001',
      'full_address':
          'Jl. dalam gadung, Lubuk Begalung, Padang, Sumatera Barat, Indonesia',
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Remix.pencil_line),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 12),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
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
              Text(
                personalInformation['full_name']!,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                personalInformation['email']!,
                style: const TextStyle(fontSize: 18, color: AppColors.g500),
              ),
              Text(
                personalInformation['phone_number']!,
                style: const TextStyle(
                  fontSize: 14,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 12),
                decoration: BoxDecoration(
                  color: AppColors.g500,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "No BP",
                          style: TextStyle(color: Colors.white),
                        ),
                        Row(
                          children: [
                            Text(
                              personalInformation['no_bp']!,
                              style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Icon(
                              Icons.copy,
                              color: Colors.white,
                            ),
                          ],
                        )
                      ],
                    ),
                    const Divider(
                      color: AppColors.g300,
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Status Keaktifan",
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          personalInformation['status']!,
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const Divider(
                      color: AppColors.g300,
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Program Studi",
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          personalInformation['program_studi']!,
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const Divider(
                      color: AppColors.g300,
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Jenjang",
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          personalInformation['jenjang']!,
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Nama Lengkap",
                        ),
                        Text(
                          personalInformation['full_name']!,
                          style: const TextStyle(
                            color: AppColors.g500,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const Divider(
                      color: AppColors.g300,
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Nama Panggilan",
                        ),
                        Text(
                          personalInformation['name']!,
                          style: const TextStyle(
                            color: AppColors.g500,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const Divider(
                      color: AppColors.g300,
                      height: 30,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Alamat Lengkap",
                          textAlign: TextAlign.left,
                        ),
                        Icon(
                          Remix.map_pin_line,
                        )
                      ],
                    ),
                    Text(
                      personalInformation['full_address']!,
                      style: const TextStyle(
                        color: AppColors.g500,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
