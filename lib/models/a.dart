import 'package:dart_mappable/dart_mappable.dart';

import 'base.dart';

@MappableClass()
class A extends Base with AMixin {
  const A(this.id);
  @override
  final String id;
  final isA = true;
}
