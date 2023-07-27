import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/colors/colors.dart';
import '../../../../core/constants/textStyles/styles.dart';

class UserName extends StatelessWidget {
  final String name;
  const UserName({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 6.h,
      left: 8.w,
      child: Text(
        name,
        style: TextStyleConstants.boldStyle(
          fontSize: 14,
          color: ColorConstants.white,
        ),
      ),
    );
  }
}
