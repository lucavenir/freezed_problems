import 'package:dart_mappable/dart_mappable.dart';
import 'package:freezed_problems/main.mapper.g.dart';

@MappableClass()
abstract class MyBase with MyBaseMappable {
  const MyBase(this.id);
  final String id;
}
