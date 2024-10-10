import 'package:flutter/material.dart';
import 'package:softweb_mobile_task/presentation/features/sign_up/presentation/widgets/sign_up_input_section.dart';
import 'package:softweb_mobile_task/presentation/features/sign_up/presentation/widgets/sign_up_view_app_bar_section.dart';
import 'package:softweb_mobile_task/presentation/general_widgets/spacing.dart';

class CreateAccountPageOne extends StatelessWidget {
  const CreateAccountPageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        VerticalSpacing(59),
        SignUpViewAppBarSection(),
        VerticalSpacing(25),
        SignUpInputSection(),
      ],
    );
  }
}
