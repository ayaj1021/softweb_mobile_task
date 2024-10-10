import 'package:flutter/material.dart';
import 'package:softweb_mobile_task/core/extensions/build_context_extension.dart';
import 'package:softweb_mobile_task/core/extensions/text_theme_extension.dart';
import 'package:softweb_mobile_task/core/theme/app_colors.dart';
import 'package:softweb_mobile_task/core/utils/strings.dart';
import 'package:softweb_mobile_task/presentation/general_widgets/spacing.dart';

class SignUpViewAppBarSection extends StatelessWidget {
  const SignUpViewAppBarSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
            Text(
              Strings.signInInstead,
              style: context.textTheme.s16w400.copyWith(
                color: AppColors.primaryEFA058,
                decoration: TextDecoration.underline,
              ),
            ),
          
          ],
        ),
          const VerticalSpacing(25),
        Text(
          Strings.createAnAccount,
          style: context.textTheme.s29w300.copyWith(
            color: AppColors.white,
        
          ),
        ),
      ],
    );
  }
}
