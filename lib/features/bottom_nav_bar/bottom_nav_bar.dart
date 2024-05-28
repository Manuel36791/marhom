import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:marhom/features/main/profile/presentation/pages/profile_view.dart';

import '../../core/utils/app_images.dart';
import '../../generated/l10n.dart';
import '../main/home/presentation/pages/home_view.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 0;
  final PageController _pageController = PageController(initialPage: 0);
  final _navBarItems = [
    BottomNavigationBarItem(
      icon: SvgPicture.asset(AppImages.homeInactiveSvg),
      activeIcon: SvgPicture.asset(AppImages.homeActiveSvg),
      label: S.current.home,
    ),
    BottomNavigationBarItem(
      icon: SvgPicture.asset(AppImages.profileInactiveSvg),
      activeIcon: SvgPicture.asset(AppImages.profileActiveSvg),
      label: S.current.profile,
    ),
  ];

  _changeTab(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  _animatedTab(index) {
    _pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeIn,
    );
  }

  final _views = [
    const HomeView(),
    const ProfileView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) => _changeTab(index),
        children: _views,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) => _animatedTab(index),
        type: BottomNavigationBarType.fixed,
        items: _navBarItems,
      ),
    );
  }
}
