import 'package:flutter/material.dart';
import 'package:responsive_dashboard/generated/assets.dart';
import 'package:responsive_dashboard/models/drawer_item_model.dart';
import 'package:responsive_dashboard/views/widgets/custom_drawer_item.dart';
import 'package:responsive_dashboard/views/widgets/user_info_list_tile.dart';

import 'custom_drawer_item_list_view.dart';

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
          SizedBox(
            height: 8,
          ),
          CustomDrawerItemListView(),
          Expanded(
            child: SizedBox(),
          ),
          CustomDrawerItem(
              drawerItemModel: DrawerItemModel(
                  image: Assets.imagesSettingSystem, title: 'Setting system'),
              isActive: false),
          CustomDrawerItem(
              drawerItemModel: DrawerItemModel(
                  image: Assets.imagesLogout, title: 'Logout account'),
              isActive: false),
          SizedBox(
            height: 48,
          ),
        ],
      ),
    );
  }
}
