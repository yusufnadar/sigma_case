import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/consts/colors/colors.dart';
import '../../../../core/consts/textStyles/styles.dart';

class UserLanguage extends StatelessWidget {
  const UserLanguage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.h),
      child: Row(
        children: [
          CircleAvatar(
            radius: 8.75.r,
          ),
          SizedBox(width: 6.w),
          Text(
            'German, English...',
            style: TextStyleConstants.regularStyle(
              fontSize: 12,
              color: ColorConstants.black2,
            ),
          )
        ],
      ),
    );
  }
}
