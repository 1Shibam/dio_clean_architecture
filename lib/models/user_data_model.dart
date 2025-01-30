//single user data model
// ignore_for_file: no_leading_underscores_for_local_identifiers

class UserDataModel {
  Data? data;

  UserDataModel({this.data});

  UserDataModel.fromJson(Map<String, dynamic> json) {
    data = json["data"] == null ? null : Data.fromJson(json["data"]);
  }

  static List<UserDataModel> fromList(List<Map<String, dynamic>> list) {
    return list.map(UserDataModel.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if (data != null) {
      _data["data"] = data?.toJson();
    }
    return _data;
  }
}

class Data {
  int? id;
  String? email;
  String? firstName;
  String? lastName;
  String? avatar;

  Data({this.id, this.email, this.firstName, this.lastName, this.avatar});

  Data.fromJson(Map<String, dynamic> json) {
    id = json["id"] ?? 0;
    email = json["email"] ?? '';
    firstName = json["first_name"] ?? '';
    lastName = json["last_name"] ?? '';
    avatar = json["avatar"] ?? '';
  }

  static List<Data> fromList(List<Map<String, dynamic>> list) {
    return list.map(Data.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["email"] = email;
    _data["first_name"] = firstName;
    _data["last_name"] = lastName;
    _data["avatar"] = avatar;
    return _data;
  }
}
