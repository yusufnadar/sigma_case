import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../viewModel/search_people_view_model.dart';
import '../widget/appBar/search_people_app_bar.dart';
import '../widget/search_people_list.dart';

class SearchPeopleView extends StatefulWidget {
  const SearchPeopleView({Key? key}) : super(key: key);

  @override
  State<SearchPeopleView> createState() => _SearchPeopleViewState();
}

class _SearchPeopleViewState extends State<SearchPeopleView> {
  @override
  void initState() {
    super.initState();
    Provider.of<SearchPeopleViewModel>(context, listen: false).onModelReady();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<SearchPeopleViewModel>(
      builder: (context, model, child) {
        return Scaffold(
          appBar: const SearchPeopleAppBar(),
          body: model.userController.text == ''
              ? SearchPeopleList(people: model.historyPeople, history: true)
              : SearchPeopleList(people: model.peoples),
        );
      },
    );
  }
}
