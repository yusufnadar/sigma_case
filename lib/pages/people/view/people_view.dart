import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../../common/viewModels/people_view_model.dart';
import '../widget/filter/filter.dart';
import '../widget/peopleList/people_list.dart';
import '../widget/people_app_bar.dart';

class PeopleView extends StatefulWidget {
  const PeopleView({Key? key}) : super(key: key);

  @override
  State<PeopleView> createState() => _PeopleViewState();
}

class _PeopleViewState extends State<PeopleView> {

  @override
  void initState() {
    super.initState();
    Provider.of<PeopleViewModel>(context,listen: false).getUsers();
  }

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
