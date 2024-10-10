import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:softweb_mobile_task/core/extensions/text_theme_extension.dart';
import 'package:softweb_mobile_task/core/theme/app_colors.dart';
import 'package:softweb_mobile_task/core/utils/strings.dart';
import 'package:softweb_mobile_task/presentation/general_widgets/spacing.dart';

class LoginHeaderSection extends StatelessWidget {
  const LoginHeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 23, right: 23, top: 122),
      child: SizedBox(
        // width: 275.w,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 100.h,
              width: 100.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
              ),
              child: Image.asset('assets/images/login_image.png'),
            ),
            const VerticalSpacing(24),
            Text(
              Strings.welcomeBack,
              style: context.textTheme.s36w300.copyWith(
                color: AppColors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
