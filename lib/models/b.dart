import 'package:dart_mappable/dart_mappable.dart';
import 'package:freezed_problems/main.mapper.g.dart';
import 'package:freezed_problems/models/a.dart';

@MappableClass()
class B with Mappable {
  const B(this.value);
  final A value;
}
