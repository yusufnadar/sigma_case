import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/colors/colors.dart';
import '../../../../core/constants/textStyles/styles.dart';

class UserNation extends StatelessWidget {
  final String nation;
  const UserNation({Key? key, required this.nation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 18.h,
      child: Row(
        children: [
          CircleAvatar(
            radius: 8.75.r,
          ),
          SizedBox(width: 6.w),
          Text(
            nation,
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
