import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/widgets/income_section.dart';
import 'package:responsive_dashboard/views/widgets/my_cards_and_transaction_history_section.dart';

class MyCardAndAllTransactionAndIncomeSection extends StatelessWidget {
  const MyCardAndAllTransactionAndIncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 40,
        ),
        MyCardsAndTransactionHistorySection(),
        SizedBox(
          height: 24,
        ),
        Expanded(
          child: IncomeSection(),
        ),
      ],
    );
  }
}
