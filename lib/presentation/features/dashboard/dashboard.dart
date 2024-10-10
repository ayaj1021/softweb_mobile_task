import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:softweb_mobile_task/core/theme/app_colors.dart';
import 'package:softweb_mobile_task/presentation/features/dashboard/pages/home/presentation/view/home_view.dart';
import 'package:softweb_mobile_task/presentation/features/dashboard/pages/referrals/referrals.dart';
import 'package:softweb_mobile_task/presentation/features/dashboard/pages/services/services.dart';
import 'package:softweb_mobile_task/presentation/features/dashboard/pages/settings/settings.dart';
import 'package:softweb_mobile_task/presentation/features/dashboard/pages/statistics/statistics.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});
  static const routeName = '/dashboard';

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int currentIndex = 0;
  final List _pages = [
    const HomeView(),
    const Services(),
    const Statistics(),
    const Referrals(),
    const Settings()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary141414,
      body: _pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: AppColors.primary696969,
        selectedItemColor: AppColors.white,
          elevation: 0,
          backgroundColor: AppColors.primary141414,
          items:  [
             BottomNavigationBarItem(
                backgroundColor: AppColors.primary141414,
                icon: SvgPicture.asset('assets/icons/home.svg'),
                label: 'Home'),
            BottomNavigationBarItem(
                backgroundColor: AppColors.primary141414,
                icon: SvgPicture.asset('assets/icons/services.svg'),
                label: 'Services'),
             BottomNavigationBarItem(
                backgroundColor: AppColors.primary141414,
                icon: SvgPicture.asset('assets/icons/statistics.svg'),
                label: 'Statistics'),
             BottomNavigationBarItem(
                backgroundColor: AppColors.primary141414,
                icon: SvgPicture.asset('assets/icons/referrals.svg'),
                label: 'Referrals'),
             BottomNavigationBarItem(
                backgroundColor: AppColors.primary141414,
                icon: SvgPicture.asset('assets/icons/settings.svg'),
                label: 'Settings'),
          ]),
    );
  }
}
