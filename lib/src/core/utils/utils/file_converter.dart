import 'dart:io';
import 'package:freezed_annotation/freezed_annotation.dart';

class FileConverter implements JsonConverter<File?, String?> {
  const FileConverter();

  @override
  File? fromJson(String? json) {
    if (json == null || json.isEmpty) return null;
    return File(json);
  }

  @override
  String? toJson(File? file) {
    return file?.path;
  }
}
