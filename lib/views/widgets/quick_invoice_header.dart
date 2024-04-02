import 'package:flutter/material.dart';

import '../../core/utils/styles.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'Quick Invoice',
          style: AppStyles.styleSemiBold20,
        ),
        Container(
          height: 48,
          width: 48,
          decoration: const ShapeDecoration(
            color: Color(0xFFFAFAFA),
            shape: OvalBorder(),
          ),
          child: const Icon(
            Icons.add,
            color: Color(0xFF4DB7F2),
          ),
        ),
      ],
    );
  }
}
