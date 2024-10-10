
import 'package:flutter/widgets.dart';
import 'package:softweb_mobile_task/presentation/features/dashboard/dashboard.dart';
import 'package:softweb_mobile_task/presentation/features/login/presentation/view/login_view.dart';
import 'package:softweb_mobile_task/presentation/features/sign_up/presentation/views/signup_view.dart';


class AppRouter {
  static final Map<String, Widget Function(BuildContext)> _routes = {
   
   // RegisterOne.routeName: (context) => const RegisterOne(),
    LoginView.routeName: (context) => const LoginView(),
    SignUpView.routeName: (context) => const SignUpView(),
   
    // OTPVerification.routeName: (context) => const OTPVerification(),
    Dashboard.routeName: (context) => const Dashboard(),
   


  };
  static Map<String, Widget Function(BuildContext)> get routes => _routes;
}
