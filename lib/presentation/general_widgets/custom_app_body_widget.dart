import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:softweb_mobile_task/core/theme/app_colors.dart';

class CustomAppBodyWidget extends StatelessWidget {
  const CustomAppBodyWidget({
    super.key,
    required this.children,
  });

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor:
            AppColors.black, // Set your desired status bar color here
        statusBarIconBrightness: Brightness.light, // Set light or dark icons
      ),
    );
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(color: AppColors.black),
      child: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: children,
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              width: 200.w,
              height: 190.h,
              decoration: const BoxDecoration(
                borderRadius:
                    BorderRadius.only(bottomLeft: Radius.circular(80)),
              ),
              child: Image.asset('assets/images/blur_image.png'),
            ),
          ),
        ],
      ),
    );
  }
}
