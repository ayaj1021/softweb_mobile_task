import 'package:flutter/material.dart';
import 'package:softweb_mobile_task/core/extensions/text_theme_extension.dart';
import 'package:softweb_mobile_task/core/theme/app_colors.dart';
import 'package:softweb_mobile_task/presentation/general_widgets/spacing.dart';

class BalanceSection extends StatelessWidget {
  const BalanceSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Wallet balance',
          style: context.textTheme.s10w400.copyWith(
            color: AppColors.white,
          ),
        ),
        Row(
          children: [
            Text(
              'NGN 50,000',
              style: context.textTheme.s16w700.copyWith(
                color: AppColors.white,
              ),
            ),
            const HorizontalSpacing(7),
            const Icon(
              Icons.visibility_off_outlined,
              color: AppColors.white,
              size: 14,
            )
          ],
        ),
        const VerticalSpacing(8),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          decoration: BoxDecoration(
            color: AppColors.white.withOpacity(0.6),
            borderRadius: BorderRadius.circular(40),
          ),
          child: Row(
            children: [
              Text(
                'Cashback',
                style: context.textTheme.s10w400.copyWith(
                  color: AppColors.primary282828,
                ),
              ),
              const HorizontalSpacing(3),
              Text(
                'N341.20',
                style: context.textTheme.s10w700.copyWith(
                  color: AppColors.primaryEF5858,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
