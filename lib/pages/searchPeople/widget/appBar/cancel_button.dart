import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/colors/colors.dart';
import '../../../../core/constants/textStyles/styles.dart';

class CancelButton extends StatelessWidget {
  const CancelButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 12.w),
      child: GestureDetector(
        onTap: () => Navigator.of(context).pop(),
        child: Text(
          'Cancel',
          style: TextStyleConstants.mediumStyle(
            fontSize: 14,
            color: ColorConstants.blue,
          ),
        ),
      ),
    );
  }
}
