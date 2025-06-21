import 'package:freezed_annotation/freezed_annotation.dart';

class RoleConverter implements JsonConverter<int, dynamic> {
  const RoleConverter();

  @override
  int fromJson(dynamic json) {
    if (json is String) {
      return int.tryParse(json) ?? -1;
    } else if (json is int) {
      return json;
    } else {
      throw Exception('Invalid type for role');
    }
  }

  @override
  dynamic toJson(int role) {
    return role.toString();
  }
}