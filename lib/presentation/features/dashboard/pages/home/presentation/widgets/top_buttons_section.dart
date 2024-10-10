import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:softweb_mobile_task/core/theme/app_colors.dart';
import 'package:softweb_mobile_task/presentation/features/dashboard/pages/home/presentation/widgets/top_buttons_widget.dart';

class TopButtonsSection extends StatelessWidget {
  const TopButtonsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric( horizontal: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const TopButtonsWidget(
            icon: 'assets/icons/top_up.svg',
            title: 'Top up',
          ),
          Container(
            color: AppColors.primaryD6D6D6,
            width: 1,
            height: 17.h,
          ),
          const TopButtonsWidget(
            icon: 'assets/icons/transfer.svg',
            title: 'Transfer',
          ),
          Container(
            color: AppColors.primaryD6D6D6,
            width: 1,
            height: 17.h,
          ),
          const TopButtonsWidget(
            icon: 'assets/icons/history.svg',
            title: 'History',
          ),
        ],
      ),
    );
  }
}
