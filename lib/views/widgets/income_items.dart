import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/income_item_model.dart';
import 'package:responsive_dashboard/views/widgets/income_item_details.dart';

class IncomeItems extends StatelessWidget {
  const IncomeItems({super.key});

  static const incomeItemsList = [
    IncomeItemModel(
        dotsColor: Color(0xFF208BC7), text: 'Design service', value: '40%'),
    IncomeItemModel(
        dotsColor: Color(0xFF4DB7F2), text: 'Design product', value: '25%'),
    IncomeItemModel(
        dotsColor: Color(0xFF064060), text: 'Product royalti', value: '20%'),
    IncomeItemModel(dotsColor: Color(0xFFE2DECD), text: 'Other', value: '22%'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return IncomeItemDetails(incomeItemModel: incomeItemsList[index]);
      },
      shrinkWrap: true,
      itemCount: incomeItemsList.length,
    );
  }
}
