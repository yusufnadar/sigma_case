import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/colors/colors.dart';
import '../../../../core/constants/textStyles/styles.dart';

class AddFriendButton extends StatelessWidget {
  const AddFriendButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30.h,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: ColorConstants.blue,
        borderRadius: BorderRadius.circular(6.r),
      ),
      child: Text(
        'Add Friend',
        style: TextStyleConstants.mediumStyle(
          fontSize: 14,
          color: ColorConstants.white,
        ),
      ),
    );
  }
}
