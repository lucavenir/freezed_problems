import 'package:dart_mappable/dart_mappable.dart';

import '../main.mapper.g.dart';
import 'my_base.dart';

@MappableClass()
class A extends MyBase with AMappable {
  const A(super.id);
  final isA = true;
}
