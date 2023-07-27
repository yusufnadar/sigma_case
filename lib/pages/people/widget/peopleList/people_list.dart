import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/consts/colors/colors.dart';
import 'add_friend_button.dart';
import 'user_image.dart';
import 'user_language.dart';
import 'user_name.dart';
import 'user_name_gradient.dart';
import 'user_nation.dart';

class PeopleList extends StatelessWidget {
  const PeopleList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      itemCount: 6,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16.w,
        mainAxisSpacing: 16.h,
        childAspectRatio: 182.w / 330.h,
      ),
      itemBuilder: (context, index) {
        return Container(
          padding: EdgeInsets.only(
            top: 6.h,
            right: 6.w,
            left: 6.w,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.r),
            color: ColorConstants.white,
            boxShadow: [
              BoxShadow(
                offset: const Offset(0, 0),
                blurRadius: 2,
                spreadRadius: 0,
                color: ColorConstants.black3,
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Stack(
                children: [
                  UserImage(),
                  UserName(),
                  UserNameGradient(),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 4.h, vertical: 12.h),
                child: const Column(
                  children: [
                    UserNation(),
                    UserLanguage(),
                    AddFriendButton(),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
