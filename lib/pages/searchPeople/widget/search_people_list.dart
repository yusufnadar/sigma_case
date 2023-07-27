import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import '../../../core/base/model/people_model.dart';
import '../../../core/consts/colors/colors.dart';
import '../../../core/consts/textStyles/styles.dart';
import '../../profile/view/profile_view.dart';
import '../viewModel/search_people_view_model.dart';
import 'clear_all_button.dart';
import 'search_image.dart';

class SearchPeopleList extends StatelessWidget {
  final List<PeopleModel> people;
  final bool? history;

  const SearchPeopleList({Key? key, required this.people, this.history})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final model = Provider.of<SearchPeopleViewModel>(context);
    return SingleChildScrollView(
      child: Column(
        children: [
          if (history == true && people.isNotEmpty) const ClearAllButton(),
          if (history != false && people.isEmpty && model.userController.text != '')
            const SearchImage()
          else
            buildSeachPeopleList(model),
        ],
      ),
    );
  }

  ListView buildSeachPeopleList(SearchPeopleViewModel model) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: people.length,
      itemBuilder: (context, index) {
        var person = people.toList()[index];
        return GestureDetector(
          onTap: () {
            model.addHistory(person);
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => ProfileView(person: person),
              ),
            );
          },
          child: Container(
            key: UniqueKey(),
            width: double.infinity,
            decoration: const BoxDecoration(color: ColorConstants.white),
            padding: EdgeInsets.symmetric(
              horizontal: 16.w,
              vertical: 12.h,
            ),
            child: Row(
              children: [
                buildUserImage(person),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    buildUserName(person),
                    buildUserNationAndLanguage(person),
                  ],
                ),
                const Spacer(),
                if (history == true) buildRemovePersonHistory(model, person),
              ],
            ),
          ),
        );
      },
    );
  }

  GestureDetector buildRemovePersonHistory(
      SearchPeopleViewModel model, PeopleModel person) {
    return GestureDetector(
      onTap: () => model.removePersonHistory(person),
      child: Icon(
        Icons.close,
        size: 20.w,
        color: ColorConstants.black4,
      ),
    );
  }

  Text buildUserNationAndLanguage(PeopleModel person) {
    return Text(
      '${person.nation} \u2981 ${person.language}',
      style: const TextStyle(
        fontSize: 12,
        color: ColorConstants.grey5,
      ),
    );
  }

  Row buildUserName(PeopleModel person) {
    return Row(
      children: [
        Text(
          '${person.name}',
          style: TextStyleConstants.regularStyle(
            fontSize: 16,
          ),
        ),
        SizedBox(width: 3.w),
        Text(
          '@${person.userName}',
          style: TextStyleConstants.regularStyle(
            fontSize: 12,
            color: ColorConstants.grey5,
          ),
        ),
      ],
    );
  }

  Container buildUserImage(PeopleModel person) {
    return Container(
      margin: EdgeInsets.only(left: 7.w, right: 12.w),
      height: 54.h,
      width: 54.w,
      child: CircleAvatar(
        backgroundImage: NetworkImage(
          person.image!,
        ),
      ),
    );
  }
}
