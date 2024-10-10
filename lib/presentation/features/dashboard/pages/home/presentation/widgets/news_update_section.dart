import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:softweb_mobile_task/core/extensions/text_theme_extension.dart';
import 'package:softweb_mobile_task/core/theme/app_colors.dart';
import 'package:softweb_mobile_task/presentation/general_widgets/spacing.dart';

class NewsUpdateSection extends StatelessWidget {
  const NewsUpdateSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 23),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'News & Update',
                style: context.textTheme.s18w500.copyWith(
                  color: AppColors.white,
                ),
              ),
              Text(
                'View all',
                style: context.textTheme.s16w500.copyWith(
                  color: AppColors.primaryEF5858,
                ),
              ),
            ],
          ),
          const VerticalSpacing(16),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(images.length, (index) {
                return Container(
                  margin: const EdgeInsets.only(right: 15),
                  height: 120.h,
                  width: 285.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(
                        images[index],
                        fit: BoxFit.cover,
                      )),
                );
              }),
            ),
          )
        ],
      ),
    );
  }
}

final List images = [
  'assets/images/news_image_1.png',
  'assets/images/news_image_2.jpeg',
];
