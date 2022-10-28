import 'package:dart_mappable/dart_mappable.dart';
import 'package:freezed_problems/main.mapper.g.dart';

/// Uncomment the code above and below for a possible version of the convertere

@MappableClass()
abstract class Base with BaseMixin, Mappable {
  const Base();
  String get id;
}
