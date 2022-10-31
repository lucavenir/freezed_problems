import 'package:dart_mappable/dart_mappable.dart';

import '../main.mapper.g.dart';

@MappableClass(discriminatorKey: 'key')
abstract class Asd with AsdMappable {
  const Asd();
  String get id;
}

@MappableClass(
  discriminatorValue: 'between_one',
  discriminatorKey: 'another_key',
)
abstract class InBetweenAsd extends Asd with InBetweenAsdMappable {
  const InBetweenAsd();

  String get prop;
}

@MappableClass(
  discriminatorValue: 'between_two',
  discriminatorKey: 'different_key',
)
abstract class InBetweenAsd2 extends Asd with InBetweenAsd2Mappable {
  const InBetweenAsd2();

  String get prop;
}

@MappableClass(
  discriminatorValue: MappableClass.useAsDefault,
  discriminatorKey: 'yet_another_key',
)
abstract class InBetweenAsd3 extends Asd with InBetweenAsd3Mappable {
  const InBetweenAsd3();

  String get prop;
}

@MappableClass(discriminatorValue: 'one')
class Class1 extends InBetweenAsd with Class1Mappable {
  const Class1(this.id, [this.prop = 'default 1', this.anotherValue = 'asd']);

  @override
  final String id;
  @override
  final String prop;

  final String anotherValue;
}

@MappableClass(discriminatorValue: 'two')
class Class2 extends InBetweenAsd with Class2Mappable {
  const Class2(this.id, [this.prop = 'default 2', this.anotherValue = 'lol']);

  @override
  final String id;
  @override
  final String prop;

  final String anotherValue;
}

@MappableClass(discriminatorValue: 'three')
class Class3 extends InBetweenAsd2 with Class3Mappable {
  const Class3(this.id, [this.prop = 'default 3', this.someVal = 'kek']);

  @override
  final String id;
  @override
  final String prop;

  final String someVal;
}

@MappableClass(discriminatorValue: 'four')
class Class4 extends InBetweenAsd3 with Class4Mappable {
  const Class4(this.id, [this.prop = 'default 4', this.someVal = 'lmao']);

  @override
  final String id;
  @override
  final String prop;

  final String someVal;
}

@MappableClass(
  discriminatorValue: MappableClass.useAsDefault,
  discriminatorKey: 'my_super_special_key',
)
abstract class AnotherLayerInBetween extends InBetweenAsd3
    with AnotherLayerInBetweenMappable {
  const AnotherLayerInBetween();

  String get prop;
}

@MappableClass(discriminatorValue: 'five')
class Class5 extends AnotherLayerInBetween with Class5Mappable {
  const Class5(this.id, [this.prop = 'default 5', this.someVal = 'rofl']);

  @override
  final String id;
  @override
  final String prop;

  final String someVal;
}
