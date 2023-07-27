import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'custom_chip.dart';

class Filter extends StatelessWidget {
  const Filter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Wrap(
        spacing: 12.w,
        children: const [
          CustomChip(filter: true),
          CustomChip(title: 'Distance'),
          CustomChip(title: 'Gender'),
          CustomChip(title: 'Age'),
        ],
      ),
    );
  }
}
