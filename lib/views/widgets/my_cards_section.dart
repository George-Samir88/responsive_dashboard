import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/utils/styles.dart';
import 'package:responsive_dashboard/views/widgets/dots_indicator.dart';
import 'package:responsive_dashboard/views/widgets/my_card_page_view.dart';

class MyCardSection extends StatelessWidget {
  const MyCardSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 24,
        ),
        SizedBox(
          width: 420,
          child: Text(
            'My card',
            style: AppStyles.styleSemiBold20,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        MyCardPageView(),
        SizedBox(
          height: 20,
        ),
        DotsIndicator(),
      ],
    );
  }
}
