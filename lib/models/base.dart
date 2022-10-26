import 'package:freezed_annotation/freezed_annotation.dart';

import 'a.dart';

/// Uncomment the code above and below for a possible version of the convertere

abstract class Base {
  const Base();

  Map<String, dynamic> toJson();
  Base copyWith();

  static T fromJson<T extends Base>(Map<String, dynamic> json) {
    switch (T) {
      case A:
        return A.fromJson(json) as T;
      default:
        throw UnimplementedError("This subclass isn't handled, yet.");
    }
  }

  String get id;
}

class BaseConverter extends JsonConverter<Base, Map<String, dynamic>> {
  const BaseConverter();
  @override
  Base fromJson(Map<String, dynamic> json) {
    return Base.fromJson(json);
  }

  @override
  Map<String, dynamic> toJson(Base object) {
    switch (object.runtimeType) {
      case A:
        return (object as A).toJson();
      default:
        throw UnimplementedError("This subclass isn't handled, yet.");
    }
  }
}
