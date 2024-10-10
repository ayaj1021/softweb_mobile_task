import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:softweb_mobile_task/core/extensions/text_theme_extension.dart';
import 'package:softweb_mobile_task/core/theme/app_colors.dart';
import 'package:softweb_mobile_task/core/utils/strings.dart';
import 'package:softweb_mobile_task/presentation/general_widgets/spacing.dart';
import 'package:softweb_mobile_task/presentation/general_widgets/swb_email_field.dart';
import 'package:softweb_mobile_task/presentation/general_widgets/swb_form_field.dart';
import 'package:softweb_mobile_task/presentation/general_widgets/swb_password_field.dart';
import 'package:softweb_mobile_task/presentation/general_widgets/swb_phone_form_field.dart';

class SignUpInputSection extends StatelessWidget {
  const SignUpInputSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 159.w,
              child: SwbFormfield(
                labelText: Strings.firstName,
                hintText: Strings.firstName,
                hintStyle: context.textTheme.s16w400.copyWith(
                  color: AppColors.primaryA4A4A4,
                ),
              ),
            ),
            SizedBox(
              width: 159.w,
              child: SwbFormfield(
                labelText: Strings.lastName,
                hintText: Strings.lastName,
                hintStyle: context.textTheme.s16w400.copyWith(
                  color: AppColors.primaryA4A4A4,
                ),
              ),
            ),
          ],
        ),
        const VerticalSpacing(20),
        SwbPhoneFormField(
          labelText: Strings.phoneNumber,
          hintText: 'Enter phone number',
          hintStyle: context.textTheme.s16w400.copyWith(
            color: AppColors.primaryA4A4A4,
          ),
        ),
        const VerticalSpacing(20),
        SwbEmailField(
          hintText: 'Enter email address',
          labelText: Strings.emailAddress,
          hintStyle: context.textTheme.s16w400.copyWith(
            color: AppColors.primaryA4A4A4,
          ),
        ),
        const VerticalSpacing(20),
        SwbPasswordField(
          labelText: Strings.createPassword,
          hintText: 'Enter Password',
          hintStyle: context.textTheme.s16w400.copyWith(
            color: AppColors.primaryA4A4A4,
          ),
        ),
        const VerticalSpacing(20),
        SwbFormfield(
          labelText: Strings.referralCode,
          hintText: 'Enter Referral Code',
          hintStyle: context.textTheme.s16w400.copyWith(
            color: AppColors.primaryA4A4A4,
          ),
        ),
      ],
    );
  }
}
