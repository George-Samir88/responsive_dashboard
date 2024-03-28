import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader(
      {super.key, required this.image, required this.isSelected});

  final String image;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: ShapeDecoration(
            color: isSelected
                ? Colors.white.withOpacity(0.10000000149011612)
                : const Color(0xFFFAFAFA),
            shape: const OvalBorder(),
          ),
          //center widget to make center widget take the constraints and svgImage applied with original size
          child: Center(
              child: SvgPicture.asset(
            image,
            colorFilter: ColorFilter.mode(
                isSelected ? Colors.white : const Color(0xFF4DB7F2),
                BlendMode.srcIn),
          )),
        ),
        const Expanded(
          child: SizedBox(),
        ),
        Transform.rotate(
          //90 degree to radians
          angle: 2 * -1.57079633,
          child: Icon(
            Icons.arrow_back_ios_new_outlined,
            color: isSelected ? Colors.white : const Color(0xFF064060),
          ),
        ),
      ],
    );
  }
}
