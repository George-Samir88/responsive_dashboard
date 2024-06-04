import 'package:flutter/material.dart';

import '../../core/utils/styles.dart';

class IncomeHeader extends StatelessWidget {
  const IncomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'Income',
          style: AppStyles.styleSemiBold20,
        ),
        Container(
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              side: const BorderSide(width: 1, color: Color(0xFFF1F1F1)),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 12,
          ),
          child: Row(
            children: [
              const Text(
                'Monthly',
                style: AppStyles.styleMedium16,
              ),
              const SizedBox(
                width: 16,
              ),
              Transform.rotate(
                angle: -1.57079633,
                child: const Icon(
                  Icons.arrow_back_ios_new_outlined,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
