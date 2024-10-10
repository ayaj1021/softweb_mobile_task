import 'package:flutter/material.dart';
import 'package:softweb_mobile_task/core/extensions/build_context_extension.dart';
import 'package:softweb_mobile_task/core/extensions/text_theme_extension.dart';
import 'package:softweb_mobile_task/core/theme/app_colors.dart';
import 'package:softweb_mobile_task/core/utils/strings.dart';
import 'package:softweb_mobile_task/presentation/general_widgets/spacing.dart';

class VerifyEmailHeaderSection extends StatelessWidget {
  const VerifyEmailHeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          onTap: () => context.pop(),
          child: Row(
            children: [
              const Icon(
                Icons.arrow_back_ios,
                color: AppColors.primaryA4A4A4,
              ),
              const HorizontalSpacing(8),
              Text(
                Strings.back,
                style: context.textTheme.s16w400.copyWith(
                  color: AppColors.primaryB9B9B9,
                ),
              )
            ],
          ),
        ),
        const VerticalSpacing(56),
        Text(
          Strings.verifyEmail,
          style: context.textTheme.s29w300.copyWith(
            color: AppColors.white,
          ),
        ),
        const VerticalSpacing(16),
        Text(
          Strings.enterOtpSentTo,
          style: context.textTheme.s16w400.copyWith(
            color: AppColors.primaryB9B9B9,
          ),
        ),
         Text(
          'tolu.ab19@gmail.com',
          style: context.textTheme.s16w500.copyWith(
            color: AppColors.white,
          ),
        ),
      ],
    );
  }
}
