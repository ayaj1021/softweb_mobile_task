import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:softweb_mobile_task/core/theme/app_colors.dart';
import 'package:softweb_mobile_task/presentation/features/dashboard/pages/home/presentation/widgets/balance_section.dart';
import 'package:softweb_mobile_task/presentation/features/dashboard/pages/home/presentation/widgets/wallet_section.dart';

class BalanceAccountSection extends StatelessWidget {
  const BalanceAccountSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16), bottomRight: Radius.circular(16)),
        gradient: LinearGradient(
          colors: [
            AppColors.primaryEF5858,
            AppColors.primaryEFA058,
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const BalanceSection(),
          Container(
            color: AppColors.primaryD04E4E.withOpacity(0.6),
            width: 1,
           height: 69.h,
          ),
          const WalletSection()
        ],
      ),
    );
  }
}

