import 'package:flutter/material.dart';

import '../../core/base/model/people_model.dart';
import '../../core/base/viewModel/base_view_model.dart';
import '../../core/constants/endPoints/end_point_constants.dart';
import '../../core/constants/enums/http_types_enums.dart';

class PeopleViewModel extends ChangeNotifier with BaseViewModel {
  List<PeopleModel> people = <PeopleModel>[];

  Future<void> getUsers() async {
    var res = await networkService!.send<PeopleModel, List<PeopleModel>>(
      EndPointConstants.getUsers,
      type: HttpTypes.get,
      parseModel: PeopleModel(),
    );
    if (res is List<PeopleModel>) {
      people = res;
      notifyListeners();
    }
  }
}
