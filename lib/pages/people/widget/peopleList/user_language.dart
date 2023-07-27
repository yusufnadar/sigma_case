import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/colors/colors.dart';
import '../../../../core/constants/textStyles/styles.dart';

class UserLanguage extends StatelessWidget {
  final String language;
  const UserLanguage({Key? key, required this.language}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.h),
      child: SizedBox(
        height: 21.h,
        child: Row(
          children: [
            CircleAvatar(
              radius: 8.75.r,
            ),
            SizedBox(width: 6.w),
            Text(
              '$language...',
              style: TextStyleConstants.regularStyle(
                fontSize: 12,
                color: ColorConstants.black2,
              ),
            )
          ],
        ),
      ),
    );
  }
}
