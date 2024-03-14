import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/widgets/custom_drawer_item.dart';

import '../../generated/assets.dart';
import '../../models/drawer_item_model.dart';

class CustomDrawerItemListView extends StatefulWidget {
  const CustomDrawerItemListView({
    super.key,
  });

  @override
  State<CustomDrawerItemListView> createState() =>
      _CustomDrawerItemListViewState();
}

class _CustomDrawerItemListViewState extends State<CustomDrawerItemListView> {
  final drawerItemsList = const [
    DrawerItemModel(image: Assets.imagesDashboard, title: 'Dashboard'),
    DrawerItemModel(image: Assets.imagesMyTransaction, title: 'My Transaction'),
    DrawerItemModel(image: Assets.imagesStatistics, title: 'Statistics'),
    DrawerItemModel(image: Assets.imagesWalletAccount, title: 'Wallet Account'),
    DrawerItemModel(image: Assets.imagesMyInvestment, title: 'My Investments'),
  ];
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            if (activeIndex != index) {
              setState(() {
                activeIndex = index;
              });
            }
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: CustomDrawerItem(
              drawerItemModel: drawerItemsList[index],
              isActive: activeIndex == index,
            ),
          ),
        );
      },
      itemCount: drawerItemsList.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
    );
  }
}
