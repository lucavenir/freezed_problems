import 'package:dart_mappable/dart_mappable.dart';
import 'package:freezed_problems/models/a.dart';

@MappableClass()
class B {
  const B(this.value);
  final A value;
}
