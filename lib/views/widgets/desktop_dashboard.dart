import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/widgets/custom_drawer.dart';
import 'package:responsive_dashboard/views/widgets/my_cards_and_transaction_history_scetion.dart';

import 'all_expenses_and_quick_invoice_section.dart';

class DesktopDashboardView extends StatelessWidget {
  const DesktopDashboardView({super.key});

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
          flex: 2,
          child: AllExpensesAndQuickInvoiceSection(),
        ),
        SizedBox(
          width: 24,
        ),
        Expanded(
          child: MyCardsAndTransactionHistorySection(),
        ),
      ],
    );
  }
}
