import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import '../../../core/consts/colors/colors.dart';
import '../../../core/consts/icon/icon_constants.dart';
import '../../../core/consts/textStyles/styles.dart';
import '../../searchPeople/view/search_people_view.dart';
import '../../searchPeople/viewModel/search_people_view_model.dart';

class PeopleAppBar extends StatelessWidget implements PreferredSizeWidget {
  const PeopleAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      titleSpacing: 24.w,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildLocationText(),
          buildLocation(),
        ],
      ),
      actions: [
        buildSearchButton(context),
      ],
    );
  }

  Padding buildSearchButton(context) {
    return Padding(
      padding: EdgeInsets.only(right: 24.w),
      child: GestureDetector(
        onTap: () {
          Provider.of<SearchPeopleViewModel>(context,listen: false).userController.clear();
          Navigator.of(context, rootNavigator: true).push(
            MaterialPageRoute(
              builder: (context) => const SearchPeopleView(),
            ),
          );
        },
        child: SvgPicture.asset(
          IconConstants.search,
          width: 28.w,
        ),
      ),
    );
  }

  Row buildLocation() {
    return Row(
      children: [
        Text(
          'Zeytinburnu',
          style: TextStyleConstants.regularStyle(
            fontSize: 18,
            color: ColorConstants.black2,
          ),
        ),
        SizedBox(width: 4.w),
        SvgPicture.asset(IconConstants.dropDown, width: 12.w)
      ],
    );
  }

  Text buildLocationText() {
    return Text(
      'Location',
      style: TextStyleConstants.regularStyle(
        fontSize: 16,
        color: ColorConstants.grey,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(56.h);
}
