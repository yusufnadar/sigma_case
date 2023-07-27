import 'package:async/async.dart';
import 'package:flutter/material.dart';

import '../../../core/base/model/people_model.dart';
import '../../../mock/peoples.dart';

class SearchPeopleViewModel extends ChangeNotifier {
  late CancelableOperation<void> cancellableOperation;
  final _delayTime = const Duration(milliseconds: 300);

  List<PeopleModel> peoples = <PeopleModel>[];
  List<PeopleModel> historyPeople = <PeopleModel>[];
  final userController = TextEditingController();

  void onModelReady() {
    _search();
  }

  void _search() {
    cancellableOperation = CancelableOperation.fromFuture(
      Future.delayed(_delayTime),
      onCancel: () {},
    );
  }

  void onItemChanged(String value) {
    if(value == ''){
      userController.clear();
    }
    cancellableOperation.cancel();
    _search();
    cancellableOperation.value.whenComplete(() {
      searchUsers(value);
    });
  }

  void searchUsers(String value) {
    if (value == '') {
      peoples.clear();
    } else {
      final lowercaseValue = value.toLowerCase();
      peoples = MockPeople.peoples
          .where((item) => item.name!.toLowerCase().startsWith(lowercaseValue))
          .toList();
    }
    notifyListeners();
  }

  void addHistory(PeopleModel person) {
    if (historyPeople.contains(person)) {
      historyPeople.remove(person);
    }
    historyPeople.insert(0, person);
    notifyListeners();
  }

  void removePersonHistory(PeopleModel person) {
    historyPeople.remove(person);
    notifyListeners();
  }

  void clearHistory() {
    historyPeople.clear();
    notifyListeners();
  }
}
