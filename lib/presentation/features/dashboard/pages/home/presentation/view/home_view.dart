import 'package:flutter/material.dart';
import 'package:softweb_mobile_task/core/theme/app_colors.dart';
import 'package:softweb_mobile_task/presentation/features/dashboard/pages/home/presentation/widgets/floating_button.dart';
import 'package:softweb_mobile_task/presentation/features/dashboard/pages/home/presentation/widgets/home_balance_section.dart';
import 'package:softweb_mobile_task/presentation/features/dashboard/pages/home/presentation/widgets/news_update_section.dart';
import 'package:softweb_mobile_task/presentation/features/dashboard/pages/home/presentation/widgets/quick_actions_section.dart';
import 'package:softweb_mobile_task/presentation/general_widgets/spacing.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.primary141414,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                HomeBalanceSection(),
                VerticalSpacing(32),
                QuickActionsSection(),
                VerticalSpacing(42),
                NewsUpdateSection(),
                VerticalSpacing(32),
              ],
            ),
          ),
          FloatingButton()
        ],
      ),
    );
  }
}
