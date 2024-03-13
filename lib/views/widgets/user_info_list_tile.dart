import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dashboard/core/utils/styles.dart';

class UserinfoListTile extends StatelessWidget {
  const UserinfoListTile(
      {super.key,
      required this.svgImage,
      required this.title,
      required this.subTitle});

  final String svgImage, title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xffFAFAFA),
      elevation: 0,
      child: ListTile(
        leading: SvgPicture.asset(svgImage),
        title: Text(
          title,
          style: AppStyles.styleSemiBold16,
        ),
        subtitle: Text(
          subTitle,
          style: AppStyles.styleRegular12,
        ),
      ),
    );
  }
}
