import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/base/model/people_model.dart';
import '../../../core/constants/colors/colors.dart';
import '../../../core/constants/textStyles/styles.dart';
import '../widget/edit_profile_button.dart';

class ProfileView extends StatelessWidget {
  final PeopleModel person;

  const ProfileView({Key? key, required this.person}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(person.firstName!),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildUserImage(),
            const EditProfileButton(),
            buildName(),
            buildUserName(),
            buildAboutTitle(),
            buildAboutText(),
          ],
        ),
      ),
    );
  }

  Image buildUserImage() => Image.network(
        person.image!,
        height: 300.h,
      );

  Text buildAboutText() {
    return Text(
      'My name is ${person.firstName} and ı am 24 years old. I like coffee and playing tennis.',
    );
  }

  Padding buildAboutTitle() {
    return Padding(
      padding: EdgeInsets.only(top: 20.h, bottom: 5.h),
      child: Text(
        'Hakkımda',
        style: TextStyleConstants.semiBoldStyle(fontSize: 18),
      ),
    );
  }

  Text buildUserName() {
    return Text(
      '@${person.userName}',
      style: TextStyleConstants.boldStyle(
        fontSize: 14,
        color: ColorConstants.grey4,
      ),
    );
  }

  Text buildName() {
    return Text(
      '${person.firstName}',
      style: TextStyleConstants.mediumStyle(
        fontSize: 30,
      ),
    );
  }
}
