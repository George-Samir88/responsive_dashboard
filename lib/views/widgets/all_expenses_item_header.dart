import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      decoration: const ShapeDecoration(
        color: Color(0xFFFAFAFA),
        shape: OvalBorder(),
      ),
      child: Row(
        children: [
          SvgPicture.asset(''),
        ],
      ),
    );
  }
}
