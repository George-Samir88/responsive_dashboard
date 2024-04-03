import 'package:flutter/material.dart';
import 'package:responsive_dashboard/generated/assets.dart';
import 'package:responsive_dashboard/models/user_info_model.dart';
import 'package:responsive_dashboard/views/widgets/user_info_list_tile.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({super.key});

  static const userInfoList = [
    UserInfoModel(
        image: Assets.imagesAvatar1,
        title: 'Madrani Andi',
        subtitle: 'Madraniadi20@gmail'),
    UserInfoModel(
        image: Assets.imagesAvatar2,
        title: 'Josua Nunito',
        subtitle: 'Josh Nunito@gmail.com'),
    UserInfoModel(
        image: Assets.imagesAvatar3,
        title: 'Madrani Andi',
        subtitle: 'Madraniadi20@gmail'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return IntrinsicWidth(
            child: UserinfoListTile(userInfoModel: userInfoList[index]),
          );
        },
        itemCount: userInfoList.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
