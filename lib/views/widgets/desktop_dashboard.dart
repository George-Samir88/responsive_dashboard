import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/widgets/custom_drawer.dart';

class DesktopDashboardView extends StatelessWidget {
  const DesktopDashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomDrawer(),
        ),
      ],
    );
  }
}
