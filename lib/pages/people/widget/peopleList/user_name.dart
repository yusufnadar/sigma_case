import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/consts/colors/colors.dart';
import '../../../../core/consts/textStyles/styles.dart';

class UserName extends StatelessWidget {
  const UserName({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 6.h,
      left: 8.w,
      child: Text(
        'Angel Herwitz',
        style: TextStyleConstants.boldStyle(
          fontSize: 14,
          color: ColorConstants.white,
        ),
      ),
    );
  }
}
