import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/constants/colors/colors.dart';
import '../../../core/constants/image/image_constants.dart';
import '../../../core/constants/textStyles/styles.dart';

class SearchImage extends StatelessWidget {
  const SearchImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 92.w, vertical: 43.h),
      child: Center(
        child: Column(
          children: [
            buildSearchImage(),
            buildNoResult(),
            buildYouCanTry(),
            buildDiscoverButton()
          ],
        ),
      ),
    );
  }

  Image buildSearchImage() {
    return Image.asset(
      ImageConstants.searchImage,
      height: 174.h,
    );
  }

  Container buildDiscoverButton() {
    return Container(
      margin: EdgeInsets.only(top: 24.h),
      padding: EdgeInsets.symmetric(vertical: 13.h),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: ColorConstants.blue,
        borderRadius: BorderRadius.circular(6.r),
      ),
      child: Text(
        'Discover People',
        style: TextStyleConstants.boldStyle(
          fontSize: 17,
          color: ColorConstants.white,
        ),
      ),
    );
  }

  Text buildYouCanTry() {
    return Text(
      '...you can try to discover people page.',
      textAlign: TextAlign.center,
      style: TextStyleConstants.thinStyle(fontSize: 16),
    );
  }

  Padding buildNoResult() {
    return Padding(
      padding: EdgeInsets.only(top: 20.h, bottom: 18.h),
      child: Text(
        'No results found but...',
        style: TextStyleConstants.boldStyle(
          fontSize: 18,
        ),
      ),
    );
  }
}
