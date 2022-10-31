import 'package:dart_mappable/dart_mappable.dart';
import 'package:freezed_problems/main.mapper.g.dart';

import 'my_super_base.dart';

@MappableClass()
abstract class MyBase extends MySuperBase with MyBaseMappable {
  const MyBase(super.id);

  String get prop => 'lol';
}
