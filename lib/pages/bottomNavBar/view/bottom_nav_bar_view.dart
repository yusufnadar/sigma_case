import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instagram_bottom_nav_bar/instagram_tab_view.dart';

import '../../../core/base/model/people_model.dart';
import '../../../core/base/view/base_view.dart';
import '../../../core/constants/colors/colors.dart';
import '../../../core/constants/icon/icon_constants.dart';
import '../../people/view/people_view.dart';
import '../../profile/view/profile_view.dart';
import '../viewModel/bottom_nav_bar_view_model.dart';

class BottomNavBarView extends StatelessWidget {
  const BottomNavBarView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView<BottomNavBarViewModel>(
      viewModel: BottomNavBarViewModel(),
      onPageBuilder: (context, model, child) {
        return InstagramTabView(
          onTap: (index) => model.changeIndex(index),
          selectedItemColor: ColorConstants.blue,
          unselectedItemColor: ColorConstants.black,
          selectedIconTheme: const IconThemeData(color: ColorConstants.blue),
          unselectedIconTheme: const IconThemeData(color: ColorConstants.black),
          currentIndex: model.currentIndex,
          selectedIconWidth: 28.w,
          unSelectedIconWidth: 28.w,
          elevation: 0,
          topOfBottomNavigationBar: ({Widget? child}) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.w),
              child: child,
            );
          },
          items: items(),
          iconType: IconType.svg,
        );
      },
    );
  }

  List<InstagramTabItem> items() {
    return [
      InstagramTabItem(
        label: 'Explore',
        page: const Scaffold(),
        icon: IconConstants.tabBar1,
      ),
      InstagramTabItem(
        label: 'Places',
        page: const Scaffold(),
        icon: IconConstants.tabBar2,
      ),
      InstagramTabItem(
        label: 'Events',
        page: const Scaffold(),
        icon: IconConstants.tabBar3,
      ),
      InstagramTabItem(
        label: 'People',
        page: const PeopleView(),
        icon: IconConstants.tabBar4,
      ),
      InstagramTabItem(
        label: 'Profile',
        page: ProfileView(
          person: PeopleModel(
            id: 999,
            firstName: 'Terry',
            language: 'Turkish',
            nation: 'German',
            userName: 'tyre',
            image: 'https://robohash.org/perferendisideveniet.png',
          ),
        ),
        icon: IconConstants.tabBar5,
      ),
    ];
  }
}
