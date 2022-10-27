import 'package:freezed_annotation/freezed_annotation.dart';

/// Uncomment the code above and below for a possible version of the convertere

mixin Base {
  String get id;

  external static Base fromJson<T extends Base>(json);

  Map<String, dynamic> toJson();
}

class BaseConverter extends JsonConverter<Base, Map<String, dynamic>> {
  const BaseConverter();
  @override
  Base fromJson(Map<String, dynamic> json) {
    // ?
    return fromJson(json);
  }

  @override
  Map<String, dynamic> toJson(Base object) {
    return object.toJson();
  }
}
