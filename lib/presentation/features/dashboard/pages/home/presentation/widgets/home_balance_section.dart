import 'package:flutter/material.dart';
import 'package:softweb_mobile_task/core/theme/app_colors.dart';
import 'package:softweb_mobile_task/presentation/features/dashboard/pages/home/presentation/widgets/balance_account_section.dart';
import 'package:softweb_mobile_task/presentation/features/dashboard/pages/home/presentation/widgets/header_section.dart';
import 'package:softweb_mobile_task/presentation/features/dashboard/pages/home/presentation/widgets/top_buttons_section.dart';
import 'package:softweb_mobile_task/presentation/general_widgets/spacing.dart';

class HomeBalanceSection extends StatelessWidget {
  const HomeBalanceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 27),
      decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: const BorderRadius.only(
            bottomRight: Radius.circular(24),
            bottomLeft: Radius.circular(24),
          ),
          boxShadow: [
            BoxShadow(
              color: AppColors.white.withOpacity(0.6),
              offset: const Offset(0, 1),
              blurRadius: 50,
              spreadRadius: 0.05,
            )
          ]),
      child: const Column(
        children: [
          VerticalSpacing(54),
          HeaderSection(),
          VerticalSpacing(33),
          BalanceAccountSection(),
          VerticalSpacing(20),
          TopButtonsSection(),
         
        ],
      ),
    );
  }
}
