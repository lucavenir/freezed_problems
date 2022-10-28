import 'package:dart_mappable/dart_mappable.dart';
import 'package:freezed_problems/main.mapper.g.dart';

import 'my_base.dart';

@MappableClass()
class B with BMappable {
  const B(this.value);
  final MyBase value;
}
