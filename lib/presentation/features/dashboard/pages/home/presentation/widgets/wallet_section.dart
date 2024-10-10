import 'package:flutter/material.dart';
import 'package:softweb_mobile_task/core/extensions/text_theme_extension.dart';
import 'package:softweb_mobile_task/core/theme/app_colors.dart';
import 'package:softweb_mobile_task/presentation/general_widgets/spacing.dart';

class WalletSection extends StatelessWidget {
  const WalletSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 11),
      decoration: BoxDecoration(
        color: AppColors.white.withOpacity(0.2),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(8),
          bottomRight: Radius.circular(8),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'MONIEPOINT',
            style: context.textTheme.s10w400.copyWith(
              color: AppColors.white,
            ),
          ),
          Row(
            children: [
              Text(
                '8192017482',
                style: context.textTheme.s16w900.copyWith(
                  color: AppColors.white,
                ),
              ),
              const HorizontalSpacing(12),
              const Icon(
                Icons.copy,
                color: AppColors.white,
                size: 14,
              )
            ],
          ),
          const VerticalSpacing(8),
          Text(
            'Deposit Fee: N20',
            style: context.textTheme.s10w400.copyWith(
              color: AppColors.white,
              decoration: TextDecoration.underline,
              decorationColor: AppColors.white,
              decorationThickness: 1.5,
            ),
          )
        ],
      ),
    );
  }
}
