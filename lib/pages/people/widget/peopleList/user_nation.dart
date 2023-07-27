import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/consts/colors/colors.dart';
import '../../../../core/consts/textStyles/styles.dart';

class UserNation extends StatelessWidget {
  const UserNation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 8.75.r,
        ),
        SizedBox(width: 6.w),
        Text(
          'Germany',
          style: TextStyleConstants.regularStyle(
            fontSize: 12,
            color: ColorConstants.black2,
          ),
        )
      ],
    );
  }
}
