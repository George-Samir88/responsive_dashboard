import 'package:flutter/material.dart';
import 'package:responsive_dashboard/generated/assets.dart';
import 'package:responsive_dashboard/views/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const Column(
        children: [
          UserinfoListTile(
            svgImage: Assets.imagesAvatar3,
            title: 'Lekan Okeowo',
            subTitle: 'demo@gmail.com',
          ),
        ],
      ),
    );
  }
}
