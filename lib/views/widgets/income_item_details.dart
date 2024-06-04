import 'package:flutter/material.dart';

import '../../core/utils/styles.dart';
import '../../models/income_item_model.dart';

class IncomeItemDetails extends StatelessWidget {
  const IncomeItemDetails({super.key, required this.incomeItemModel});

  final IncomeItemModel incomeItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 12,
        height: 12,
        decoration: ShapeDecoration(
          color: incomeItemModel.dotsColor,
          shape: const OvalBorder(),
        ),
      ),
      title: Text(
        incomeItemModel.text,
        style: AppStyles.styleRegular16,
      ),
      trailing: Text(
        incomeItemModel.value,
        style: AppStyles.styleMedium16,
      ),
    );
  }
}
