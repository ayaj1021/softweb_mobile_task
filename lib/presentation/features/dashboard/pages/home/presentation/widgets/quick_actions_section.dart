import 'package:flutter/material.dart';
import 'package:softweb_mobile_task/core/extensions/text_theme_extension.dart';
import 'package:softweb_mobile_task/core/theme/app_colors.dart';
import 'package:softweb_mobile_task/presentation/features/dashboard/pages/home/presentation/widgets/quick_action_widget.dart';
import 'package:softweb_mobile_task/presentation/general_widgets/spacing.dart';

class QuickActionsSection extends StatelessWidget {
  const QuickActionsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 23),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Quick Actions',
            style: context.textTheme.s18w500.copyWith(
              color: AppColors.white,
            ),
          ),
          const VerticalSpacing(15),
          const Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  QuickActionsWidget(
                    image: 'assets/icons/data.svg',
                    text: 'Data',
                  ),
                  QuickActionsWidget(
                    image: 'assets/icons/airtime.svg',
                    text: 'Airtime',
                  ),
                  QuickActionsWidget(
                    image: 'assets/icons/showmax.svg',
                    text: 'Showmax',
                  ),
                  QuickActionsWidget(
                    image: 'assets/icons/giftcard.svg',
                    text: 'Giftcards',
                  ),
                ],
              )
            ],
          ),
          const VerticalSpacing(6),
          const Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  QuickActionsWidget(
                    image: 'assets/icons/betting.svg',
                    text: 'Betting',
                  ),
                  QuickActionsWidget(
                    image: 'assets/icons/electricity.svg',
                    text: 'Electricity',
                  ),
                  QuickActionsWidget(
                    image: 'assets/icons/tvcable.svg',
                    text: 'TV/Cable',
                  ),
                  QuickActionsWidget(
                    image: 'assets/icons/epin.svg',
                    text: 'E-Pin',
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
