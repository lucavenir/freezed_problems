import 'package:dart_mappable/dart_mappable.dart';
import 'package:freezed_problems/main.mapper.g.dart';

@MappableClass()
abstract class MySuperBase with MySuperBaseMappable {
  const MySuperBase(this.id);

  final String id;
  String get key;

  String get superProp => 'superLoL';
}
