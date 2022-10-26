import 'package:freezed_annotation/freezed_annotation.dart';

import 'base.dart';

part 'a.freezed.dart';
part 'a.g.dart';

@freezed
class A extends Base with _$A {
  @Implements<Base>()
  const factory A(String id) = _A;

  factory A.fromJson(Map<String, dynamic> json) => _$AFromJson(json);
}
