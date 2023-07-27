import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../../../common/viewModels/people_view_model.dart';
import '../../../../core/constants/colors/colors.dart';
import '../../../profile/view/profile_view.dart';
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
    final model = Provider.of<PeopleViewModel>(context);
    return GridView.builder(
      shrinkWrap: true,
      itemCount: model.people.length,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16.w,
          mainAxisSpacing: 16.h,
          mainAxisExtent: 330.h
          //childAspectRatio: (1 / 0.408),
          ),
      itemBuilder: (context, index) {
        final person = model.people[index];
        return GestureDetector(
          onTap: () => Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => ProfileView(person: person),
            ),
          ),
          child: Container(
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
                Stack(
                  children: [
                    UserImage(image: person.image!),
                    const UserNameGradient(),
                    UserName(name: person.firstName!),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 4.h,
                    vertical: 12.h,
                  ),
                  child: Column(
                    children: [
                      UserNation(nation: person.nation!),
                      UserLanguage(language: person.language!),
                      const AddFriendButton(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
