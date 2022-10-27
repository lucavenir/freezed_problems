import 'package:freezed_annotation/freezed_annotation.dart';

import 'a.dart';

/// Uncomment the code above and below for a possible version of the convertere

mixin Base {
  String get key;
  String get id;

  Map<String, dynamic> toJson();
}

class BaseConverter extends JsonConverter<Base, Map<String, dynamic>> {
  const BaseConverter();
  @override
  Base fromJson(Map<String, dynamic> json) {
    final fieldThatIdentifiesTheType = json['key'];

    switch (fieldThatIdentifiesTheType) {
      case 'a':
        return A.fromJson(json);
      default:
        throw const FormatException(
            "The value type given isn't compatible to any subclasses");
    }
  }

  @override
  Map<String, dynamic> toJson(Base object) {
    return object.toJson();
  }
}
