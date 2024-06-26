import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/utils/styles.dart';
import 'package:responsive_dashboard/views/widgets/latest_transaction_list_view.dart';
import 'package:responsive_dashboard/views/widgets/quick_invoice_form.dart';

class LatestTransactionSection extends StatelessWidget {
  const LatestTransactionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Latest Transaction',
          style: AppStyles.styleMedium16,
        ),
        SizedBox(
          height: 12,
        ),
        LatestTransactionListView(),
        Divider(
          height: 48,
          color: Color(0xFFF1F1F1),
        ),
        QuickInvoiceForm(),
      ],
    );
  }
}
