import 'package:freezed_annotation/freezed_annotation.dart';

import 'base.dart';

part 'a.freezed.dart';
part 'a.g.dart';

@Freezed(toJson: true)
class A with _$A, Base {
  const A._();
  @With<Base>()
  const factory A(String id) = _A;

  factory A.fromJson(Map<String, dynamic> json) => _$AFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$$_AToJson(_$_A(id));
}
