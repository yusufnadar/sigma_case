import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../widget/filter/filter.dart';
import '../widget/peopleList/people_list.dart';
import '../widget/people_app_bar.dart';

class PeopleView extends StatelessWidget {
  const PeopleView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PeopleAppBar(),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 24.h, bottom: 24.h),
        child: const Column(
          children: [
            Filter(),
            PeopleList(),
          ],
        ),
      ),
    );
  }
}
