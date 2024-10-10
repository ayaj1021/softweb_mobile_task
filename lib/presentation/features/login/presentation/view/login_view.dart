import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:softweb_mobile_task/core/extensions/build_context_extension.dart';
import 'package:softweb_mobile_task/core/extensions/text_theme_extension.dart';
import 'package:softweb_mobile_task/core/theme/app_colors.dart';
import 'package:softweb_mobile_task/core/utils/strings.dart';
import 'package:softweb_mobile_task/presentation/features/login/presentation/widgets/login_header_section.dart';
import 'package:softweb_mobile_task/presentation/features/login/presentation/widgets/login_input_section.dart';
import 'package:softweb_mobile_task/presentation/features/sign_up/presentation/views/signup_view.dart';
import 'package:softweb_mobile_task/presentation/general_widgets/app_button.dart';
import 'package:softweb_mobile_task/presentation/general_widgets/custom_app_body_widget.dart';
import 'package:softweb_mobile_task/presentation/general_widgets/spacing.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});
  static const routeName = '/';

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      body: SafeArea(
          child: CustomAppBodyWidget(
        children: [
          const LoginHeaderSection(),
          const VerticalSpacing(42),
          const LoginInputSection(),
          const VerticalSpacing(32),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: SwbSendButton(
              onTap: () {
                context.pushNamed(SignUpView.routeName);
              },
              title: 'Sign in',
            ),
          ),
          const VerticalSpacing(16),
          RichText(
            text: TextSpan(
              text: Strings.dontHaveAccount,
              style: context.textTheme.s14w400.copyWith(
                color: AppColors.primaryB9B9B9,
              ),
              children: [
                TextSpan(
                  recognizer: TapGestureRecognizer()
                  ..onTap = () {
                  context.pushNamed(SignUpView.routeName);
                  },
                  text: Strings.createAccount,
                  style: context.textTheme.s14w400.copyWith(
                    color: AppColors.primaryEFA058,
                  ),
                )
              ],
               // context.pushNamed(Dashboard.routeName);
            ),
          )
        ],
      )),
    );
  }
}
