import 'package:freezed_annotation/freezed_annotation.dart';

import 'base.dart';

part 'b.freezed.dart';
part 'b.g.dart';

@freezed
class B with _$B {
  const factory B(
    // @BaseConverter() this isn't enough...
    List<Base> myListofBase,
  ) = _B;

  factory B.fromJson(Map<String, dynamic> json) => _$BFromJson(json);
}
