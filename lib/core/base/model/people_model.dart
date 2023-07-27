

import 'base_model.dart';

class PeopleModel extends BaseModel<PeopleModel> {
  int? id;
  String? firstName;
  String? userName;
  String? image;
  String? nation;
  String? language;
  String? gender;

  PeopleModel({
    this.id,
    this.image,
    this.firstName,
    this.language,
    this.nation,
    this.userName,
  });

  @override
  PeopleModel fromJson(Map<String, dynamic> json) => PeopleModel(
        id: json['id'],
        image: json['image'],
        firstName: json['firstName'],
        language: 'Turkish',
        userName: json['username'],
        nation: 'German',
      );

  @override
  Map<String, dynamic> toJson() => {};
}
