import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'cancel_button.dart';
import 'search_input.dart';

class SearchPeopleAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const SearchPeopleAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      titleSpacing: 24.w,
      toolbarHeight: 81.h,
      title: Container(
        margin: EdgeInsets.only(top: 24.h),
        child: const Row(
          children: [
            SearchInput(),
            CancelButton(),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(81.h);
}
