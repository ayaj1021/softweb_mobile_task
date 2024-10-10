import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:softweb_mobile_task/core/extensions/text_theme_extension.dart';
import 'package:softweb_mobile_task/core/theme/app_colors.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: AppColors.primaryA4A4A4)),
          child: SvgPicture.asset('assets/icons/profile.svg'),
        ),
        Text(
          'Welcome, Sam 👋🏾',
          style: context.textTheme.s16w400.copyWith(
            color: AppColors.primary141414,
            fontWeight: FontWeight.w300,
          ),
        ),
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: AppColors.primaryA4A4A4)),
          child: SvgPicture.asset('assets/icons/notification.svg'),
        ),
      ],
    );
  }
}
