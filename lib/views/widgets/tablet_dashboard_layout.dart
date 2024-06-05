import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/widgets/all_expenses_and_quick_invoice_section.dart';
import 'package:responsive_dashboard/views/widgets/custom_drawer.dart';

import 'income_section.dart';
import 'my_cards_and_transaction_history_section.dart';

class TabletDashboardLayout extends StatelessWidget {
  const TabletDashboardLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomDrawer(),
        ),
        SizedBox(
          width: 32,
        ),
        Expanded(
          flex: 3,
          child: SingleChildScrollView(
            child: Column(
              children: [
                AllExpensesAndQuickInvoiceSection(),
                SizedBox(
                  height: 24,
                ),
                MyCardsAndTransactionHistorySection(),
                SizedBox(
                  height: 24,
                ),
                IncomeSection(),
                SizedBox(
                  height: 16,
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          width: 32,
        ),
      ],
    );
  }
}
