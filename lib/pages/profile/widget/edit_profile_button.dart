import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/constants/colors/colors.dart';
import '../../../core/constants/textStyles/styles.dart';

class EditProfileButton extends StatelessWidget {
  const EditProfileButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20.h),
      padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6.r),
        border: Border.all(
          color: ColorConstants.blue,
        ),
      ),
      width: double.infinity,
      alignment: Alignment.center,
      child: Text(
        'Profili Düzenle',
        style: TextStyleConstants.semiBoldStyle(
          fontSize: 16,
          color: ColorConstants.blue,
        ),
      ),
    );
  }
}
