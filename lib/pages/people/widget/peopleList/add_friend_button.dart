import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/consts/colors/colors.dart';
import '../../../../core/consts/textStyles/styles.dart';

class AddFriendButton extends StatelessWidget {
  const AddFriendButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(vertical: 4.h),
      decoration: BoxDecoration(
        color: ColorConstants.blue,
        borderRadius: BorderRadius.circular(6),
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
