import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/widgets/transaction_item.dart';

import '../../models/transaction_model.dart';

class TransactionHistoryListView extends StatelessWidget {
  const TransactionHistoryListView({super.key});

  static const List<TransactionModel> transactionModel = [
    TransactionModel(
      title: 'Cash Withdrawal',
      date: '13 Apr, 2022 ',
      amount: r'$20,129',
      isWithdraw: true,
    ),
    TransactionModel(
      title: 'Landing Page project',
      date: '13 Apr, 2022 at 3:30 PM',
      amount: r'$2,000',
      isWithdraw: false,
    ),
    TransactionModel(
      title: 'Juni Mobile App project',
      date: '13 Apr, 2022 at 3:30 PM',
      amount: r'$20,129',
      isWithdraw: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TransactionItem(transactionModel: transactionModel[index]);
      },
      shrinkWrap: true,
      itemCount: 3,
    );
  }
}
