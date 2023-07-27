import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../../core/constants/colors/colors.dart';
import '../../../core/constants/textStyles/styles.dart';
import '../viewModel/search_people_view_model.dart';

class ClearAllButton extends StatelessWidget {
  const ClearAllButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final model = Provider.of<SearchPeopleViewModel>(context);
    return GestureDetector(
      onTap: () {
        showDialog(
          barrierDismissible: true,
          context: context,
          builder: (context) => AlertDialog(
            elevation: 0,
            backgroundColor: ColorConstants.white,
            titlePadding: EdgeInsets.only(top: 33.h),
            title: Column(
              children: [
                buildClearTitle(),
                Container(
                  width: double.infinity,
                  height: 1,
                  color: ColorConstants.grey6,
                ),
                SizedBox(
                  width: double.infinity,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      buildNotNow(context),
                      Container(
                        height: 66.h,
                        width: 1,
                        color: ColorConstants.grey6,
                      ),
                      buildClearAll(model, context),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.only(top: 13.h),
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        alignment: Alignment.centerRight,
        child: Text(
          'Clear all',
          style: TextStyleConstants.regularStyle(
            fontSize: 12,
          ),
        ),
      ),
    );
  }

  Padding buildClearTitle() {
    return Padding(
      padding: EdgeInsets.only(bottom: 33.h),
      child: Text(
        'Clear Search History?',
        style: TextStyleConstants.mediumStyle(fontSize: 20),
      ),
    );
  }

  GestureDetector buildClearAll(
      SearchPeopleViewModel model, BuildContext context) {
    return GestureDetector(
      onTap: () {
        model.clearHistory();
        Navigator.of(context).pop();
      },
      child: Text(
        'Clear All',
        style: TextStyleConstants.mediumStyle(
          fontSize: 20,
          color: ColorConstants.red,
        ),
      ),
    );
  }

  GestureDetector buildNotNow(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).pop(),
      child: Text(
        'Not Now',
        style: TextStyleConstants.mediumStyle(
          fontSize: 20,
          color: ColorConstants.blue,
        ),
      ),
    );
  }
}
