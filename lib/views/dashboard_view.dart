import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/adaptive_layout.dart';
import 'package:responsive_dashboard/views/widgets/desktop_dashboard.dart';
import 'package:responsive_dashboard/views/widgets/mobile_dashboard_layout.dart';
import 'package:responsive_dashboard/views/widgets/tablet_dashboard_layout.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE5E5E5),
      appBar: MediaQuery.sizeOf(context).width < 800
          ? AppBar(
              backgroundColor: const Color(0xffFAFAFA),
              leading: const Icon(Icons.menu),
            )
          : null,
      body: AdaptiveLayout(
          mobileLayout: (context) => const MobileDashboardLayout(),
          tabletLayout: (context) => const TabletDashboardLayout(),
          desktopLayout: (context) => const DesktopDashboardView()),
    );
  }
}
