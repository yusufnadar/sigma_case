import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../core/consts/colors/colors.dart';
import '../../../../core/consts/icon/icon_constants.dart';
import '../../../../core/consts/textStyles/styles.dart';

class CustomChip extends StatelessWidget {
  final String? title;
  final bool? filter;

  const CustomChip({Key? key, this.title, this.filter})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Chip(
      padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 6.h),
      labelPadding: EdgeInsets.symmetric(horizontal: 0.w),
      side: const BorderSide(color: ColorConstants.black),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.r),
      ),
      label: filter != true
          ? Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  title ?? '',
                  style: TextStyleConstants.regularStyle(
                    fontSize: 16,
                    color: ColorConstants.black,
                  ),
                ),
                SizedBox(width: 10.w),
                SvgPicture.asset(
                  IconConstants.dropDown,
                  color: ColorConstants.black,
                  width: 11.w,
                )
              ],
            )
          : SvgPicture.asset(
              IconConstants.filter,
              width: 20.w,
            ),
    );
  }
}
