import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:softweb_mobile_task/core/theme/app_colors.dart';

class FloatingButton extends StatelessWidget {
  const FloatingButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: Container(
        margin: const EdgeInsets.only(right: 30, bottom: 30),
        padding: const EdgeInsets.all(8),
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
            colors: [
              AppColors.primaryEF5858,
              AppColors.primaryEFA058,
            ],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
        ),
        child: SvgPicture.asset('assets/icons/message.svg'),
      ),
    );
  }
}
