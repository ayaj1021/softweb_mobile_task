import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:softweb_mobile_task/core/extensions/text_theme_extension.dart';
import 'package:softweb_mobile_task/core/theme/app_colors.dart';
import 'package:softweb_mobile_task/presentation/general_widgets/spacing.dart';

class QuickActionsWidget extends StatelessWidget {
  const QuickActionsWidget(
      {super.key, required this.image, required this.text});
  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 78.w,
      height: 75.h,
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 14),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: AppColors.primary282828,
        ),
        child: Column(
          children: [
            SizedBox(
              height: 24.h,
              width: 24.w,
              child: SvgPicture.asset(image),
            ),
            const VerticalSpacing(5),
            Text(
              text,
              style: context.textTheme.s14w400.copyWith(
                color: AppColors.white,
                fontWeight: FontWeight.w300,
              ),
            )
          ],
        ));
  }
}
