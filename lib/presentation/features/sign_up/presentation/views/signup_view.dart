import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:softweb_mobile_task/core/extensions/build_context_extension.dart';
import 'package:softweb_mobile_task/core/extensions/text_theme_extension.dart';
import 'package:softweb_mobile_task/core/theme/app_colors.dart';
import 'package:softweb_mobile_task/core/utils/strings.dart';
import 'package:softweb_mobile_task/presentation/features/dashboard/dashboard.dart';
import 'package:softweb_mobile_task/presentation/features/sign_up/presentation/widgets/create_account_page_one.dart';
import 'package:softweb_mobile_task/presentation/features/sign_up/presentation/widgets/create_account_page_two.dart';
import 'package:softweb_mobile_task/presentation/general_widgets/app_button.dart';
import 'package:softweb_mobile_task/presentation/general_widgets/custom_app_body_widget.dart';
import 'package:softweb_mobile_task/presentation/general_widgets/spacing.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});
  static const routeName = '/signUpView';

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  final PageController _pageController = PageController(initialPage: 0);
  int currentPage = 0;
  List<Widget> buildIndicators(currentPage) {
    List<Widget> indicators = [];
    for (int i = 0; i < pages.length; i++) {
      indicators.add(
        Container(
          width: 43,
          height: 4,
          margin: const EdgeInsets.symmetric(horizontal: 2),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(3),
            shape: BoxShape.rectangle,
            color: currentPage == i
                ? const Color(0xFF0991CC)
                : const Color(0xFFC4C4C4),
          ),
        ),
      );
    }
    return indicators;
  }

  final List<Widget> pages = [
    const CreateAccountPageOne(),
    const CreateAccountPageTwo(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: CustomAppBodyWidget(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height - 170,
                  child: PageView.builder(
                    controller: _pageController,
                    itemCount: pages.length,
                    onPageChanged: (index) {
                      setState(() {
                        currentPage = index;
                      });
                    },
                    itemBuilder: (context, index) {
                      return pages[index];
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: SwbSendButton(
                    onTap: () {
                      if (currentPage < pages.length - 1) {
                        _pageController.nextPage(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                        );
                      } else {
                        context.pushNamed(Dashboard.routeName);
                      }
                    },
                    title: currentPage == 0 ? 'Next' : 'Verify email',
                  ),
                ),
                const VerticalSpacing(32),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(2, (index) {
                      return Container(
                        width: 159.w,
                        height: 4,
                        margin: const EdgeInsets.symmetric(horizontal: 2),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3.r),
                          shape: BoxShape.rectangle,
                          color: currentPage == index
                              ? AppColors.white
                              : AppColors.primary373737,
                        ),
                      );
                    })),
                const VerticalSpacing(16),
                Center(
                  child: Text(
                    currentPage == 0
                        ? Strings.accountInformation
                        : Strings.emailVerification,
                    style: context.textTheme.s16w400.copyWith(
                        color: AppColors.primaryA4A4A4,
                        fontWeight: FontWeight.w300),
                  ),
                ),
                const VerticalSpacing(30),
              ],
            ),
          )
        ],
      )),
    );
  }
}
