import 'package:flutter/material.dart';
import 'package:softweb_mobile_task/presentation/features/sign_up/presentation/widgets/otp_input_section.dart';
import 'package:softweb_mobile_task/presentation/features/sign_up/presentation/widgets/verify_email_header_section.dart';
import 'package:softweb_mobile_task/presentation/general_widgets/spacing.dart';

class CreateAccountPageTwo extends StatelessWidget {
  const CreateAccountPageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        VerticalSpacing(40),
        VerifyEmailHeaderSection(),
       // VerticalSpacing(12),
        OtpInputSection(),

      ],
    );
  }
}
