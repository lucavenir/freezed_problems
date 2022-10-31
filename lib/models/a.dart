import 'package:dart_mappable/dart_mappable.dart';

import '../../main.mapper.g.dart';
import 'my_base.dart';

@MappableClass()
abstract class A extends MyBase with AMappable {
  const A(super.id);
}

@MappableClass()
class X extends A with XMappable {
  const X(super.id);

  @override
  String get key => 'x';
}

@MappableClass()
class Z extends A with ZMappable {
  const Z(super.id);

  @override
  String get key => 'z';
}
