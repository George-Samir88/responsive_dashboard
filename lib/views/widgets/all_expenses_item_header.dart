import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: const ShapeDecoration(
            color: Color(0xFFFAFAFA),
            shape: OvalBorder(),
          ),
          //center widget to make center widget take the constraints and svgImage applied with original size
          child: Center(child: SvgPicture.asset(image)),
        ),
        const Expanded(
          child: SizedBox(),
        ),
        Transform.rotate(
          //90 degree to radians
          angle: 2 * -1.57079633,
          child: const Icon(
            Icons.arrow_back_ios_new_outlined,
            color: Color(0xFF064060),
          ),
        ),
      ],
    );
  }
}
