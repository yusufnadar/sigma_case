import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/consts/image/image_constants.dart';

class UserImage extends StatelessWidget {
  const UserImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      ImageConstants.samplePhoto,
      width: 170.w,
      height: 215.h,
      fit: BoxFit.cover,
    );
  }
}
