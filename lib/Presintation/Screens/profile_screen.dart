// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:test/Core/Utils/assets_manager.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(8),
          height: size.height / 3,
          color: Colors.blueAccent,
          width: size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Profile",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage(AssetsManager.startImage),
                        fit: BoxFit.cover)),
              ),
              const Text(
                "Azzam",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
            ],
          ),
        ),
        ProfileListTile(
          icon: Icons.settings,
          title: "Profile Settings",
          ontap: () {},
        ),
        ProfileListTile(
          icon: Icons.currency_exchange_outlined,
          title: "Currencies",
          ontap: () {},
        ),
        ProfileListTile(
          icon: Icons.shopping_bag_outlined,
          title: "My Orders",
          ontap: () {},
        ),
        ProfileListTile(
          icon: Icons.language,
          title: "Language",
          ontap: () {},
        ),
        ProfileListTile(
          icon: Icons.info_rounded,
          title: "About The App",
          ontap: () {},
        ),
        ProfileListTile(
          icon: Icons.markunread,
          title: "Contact Us",
          ontap: () {},
        ),
        ProfileListTile(
          icon: Icons.exit_to_app,
          title: "Sign Out",
          ontap: () {},
        ),
      ],
    );
  }
}

class ProfileListTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback ontap;
  const ProfileListTile({
    Key? key,
    required this.icon,
    required this.title,
    required this.ontap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        size: 20,
        color: Colors.blueAccent,
      ),
      title: Text(
        title,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 15,
        ),
      ),
      trailing: const Icon(
        Icons.arrow_forward_ios,
        size: 15,
        color: Colors.black,
      ),
      onTap: ontap,
    );
  }
}
