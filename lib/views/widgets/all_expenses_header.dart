import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/utils/styles.dart';
import 'package:responsive_dashboard/views/widgets/range_option_in_all_expenses.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text(
          'All Expenses',
          style: AppStyles.styleSemiBold20,
        ),
        Expanded(
          child: SizedBox(),
        ),
        RangeOptionInAllExpenses(),
      ],
    );
  }
}
