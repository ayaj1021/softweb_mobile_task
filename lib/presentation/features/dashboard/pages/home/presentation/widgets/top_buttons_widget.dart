import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:softweb_mobile_task/core/extensions/text_theme_extension.dart';
import 'package:softweb_mobile_task/core/theme/app_colors.dart';
import 'package:softweb_mobile_task/presentation/general_widgets/spacing.dart';

class TopButtonsWidget extends StatelessWidget {
  const TopButtonsWidget({
    super.key,
    required this.icon,
    required this.title,
  });

  final String icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20.h,
          width: 20.w,
          child: SvgPicture.asset(icon),
        ),
        const VerticalSpacing(11.5),
        Text(
          title,
          style: context.textTheme.s14w500.copyWith(
            color: AppColors.primary4B4B4B,
          ),
        )
      ],
    );
  }
}
