import 'package:flutter/material.dart';

import '../../core/utils/styles.dart';
import '../../models/all_expenses_item_model.dart';
import 'all_expenses_item_header.dart';

class InActiveAllExpensesItem extends StatelessWidget {
  const InActiveAllExpensesItem({
    super.key,
    required this.allExpensesItemModel,
  });

  final AllExpensesItemModel allExpensesItemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0xFFF1F1F1)),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            image: allExpensesItemModel.image,
            isSelected: false,
          ),
          const SizedBox(
            height: 34,
          ),
          Text(
            allExpensesItemModel.title,
            style: AppStyles.styleSemiBold16,
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            allExpensesItemModel.date,
            style: AppStyles.styleRegular14,
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            allExpensesItemModel.price,
            style: AppStyles.styleSemiBold24
                .copyWith(color: const Color(0xFF4DB7F2)),
          ),
        ],
      ),
    );
  }
}

class ActiveAllExpensesItem extends StatelessWidget {
  const ActiveAllExpensesItem({
    super.key,
    required this.allExpensesItemModel,
  });

  final AllExpensesItemModel allExpensesItemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: const Color(0xFF4DB7F2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            image: allExpensesItemModel.image,
            isSelected: true,
          ),
          const SizedBox(
            height: 34,
          ),
          Text(
            allExpensesItemModel.title,
            style: AppStyles.styleSemiBold16.copyWith(color: Colors.white),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            allExpensesItemModel.date,
            style: AppStyles.styleRegular14
                .copyWith(color: const Color(0xFFFAFAFA)),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            allExpensesItemModel.price,
            style: AppStyles.styleSemiBold24,
          ),
        ],
      ),
    );
  }
}
