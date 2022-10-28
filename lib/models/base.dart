import 'package:dart_mappable/dart_mappable.dart';
import 'package:freezed_problems/main.mapper.g.dart';

@MappableClass()
abstract class Base with BaseMixin, Mappable {
  const Base();
  String get id;
}
