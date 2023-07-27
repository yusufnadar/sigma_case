import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

import '../../../../core/constants/colors/colors.dart';
import '../../../../core/constants/icon/icon_constants.dart';
import '../../../../core/constants/textStyles/styles.dart';
import '../../viewModel/search_people_view_model.dart';

class SearchInput extends StatelessWidget {
  const SearchInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final model = Provider.of<SearchPeopleViewModel>(context);
    return Expanded(
      child: TextFormField(
        onChanged: model.onItemChanged,
        controller: model.userController,
        decoration: InputDecoration(
          isCollapsed: true,
          contentPadding: EdgeInsets.symmetric(vertical: 11.h),
          prefixIconConstraints: BoxConstraints(
            maxWidth: 38.w,
            minWidth: 38.w,
          ),
          suffixIconConstraints: BoxConstraints(
            minWidth: 34.w,
            maxWidth: 34.w,
          ),
          suffixIcon: model.userController.text != ''  ? GestureDetector(
            onTap: ()=>model.onItemChanged(''),
            child: Padding(
              padding: EdgeInsets.only(right: 14.w),
              child: SvgPicture.asset(
                IconConstants.close,
              ),
            ),
          ) : null,
          prefixIcon: Padding(
            padding: EdgeInsets.only(left: 12.w, right: 9.w),
            child: SvgPicture.asset(
              IconConstants.search,
              color: ColorConstants.grey3,
            ),
          ),
          filled: true,
          hintText: 'Search',
          hintStyle: TextStyleConstants.regularStyle(
            fontSize: 15,
            color: ColorConstants.grey4,
          ),
          fillColor: ColorConstants.grey2,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.r),
            borderSide: BorderSide.none,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.r),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.r),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
