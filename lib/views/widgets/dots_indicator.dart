import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/widgets/custom_dots_indicator.dart';

class DotsIndicator extends StatelessWidget {
  const DotsIndicator({super.key, required this.currentIndex});
final int currentIndex;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        3,
        (index) => Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: CustomDotsIndicator(isActive: currentIndex == index),
        ),
      ),
    );
  }
}
