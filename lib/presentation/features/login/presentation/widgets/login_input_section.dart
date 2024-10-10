import 'package:flutter/material.dart';
import 'package:softweb_mobile_task/core/extensions/text_theme_extension.dart';
import 'package:softweb_mobile_task/core/theme/app_colors.dart';
import 'package:softweb_mobile_task/core/utils/strings.dart';
import 'package:softweb_mobile_task/presentation/general_widgets/spacing.dart';
import 'package:softweb_mobile_task/presentation/general_widgets/swb_email_field.dart';
import 'package:softweb_mobile_task/presentation/general_widgets/swb_password_field.dart';

class LoginInputSection extends StatelessWidget {
  const LoginInputSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SwbEmailField(
            hintText: 'Enter email address',
            labelText: Strings.emailAddress,
            hintStyle: context.textTheme.s16w400.copyWith(
              color: AppColors.primaryA4A4A4,
            ),
          ),
           const VerticalSpacing(24),
          SwbPasswordField(
            labelText: Strings.password,
            hintText: 'Enter Password',
            hintStyle: context.textTheme.s16w400.copyWith(
              color: AppColors.primaryA4A4A4,
            ),
          ),
          const VerticalSpacing(8),
          Text(
            Strings.forgotPassword,
            style: context.textTheme.s14w400.copyWith(
              color: AppColors.primaryB9B9B9,
            ),
          )
        ],
      ),
    );
  }
}
