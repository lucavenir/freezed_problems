import 'package:flutter_test/flutter_test.dart';
import 'package:freezed_problems/main.mapper.g.dart';
import 'package:freezed_problems/models/a.dart';
import 'package:freezed_problems/models/asd.dart';
import 'package:freezed_problems/models/b.dart';
import 'package:freezed_problems/models/my_base.dart';

void main() {
  group('model tests', () {
    late A x;
    late B b;
    const id = "my-id";
    const xType = 'X';
    const aJson = {'type': xType, 'id': id};
    const bJson = {
      'value': {'id': id, 'type': xType}
    };

    setUp(() {
      x = const X(id);
      b = B(x);
    });

    test('problem 1', () {
      final a = Mapper.fromMap<MyBase>(aJson);
      final c = b.value.copyWith();
    });

    test('problem 2.1', () {
      expect(b.toMap(), equals(bJson));
    });

    test('problem 2.2', () {
      expect(b.value.toMap(), equals(aJson));
    });

    test('problem 3', () {
      final b = Mapper.fromMap<B>(bJson);
    });
  });

  group('more model tests', () {
    test('class 1 work', () {
      const someJson = {
        'key': 'between_one',
        'another_key': 'one',
        'id': 'some-id',
        'anotherValue': 'lol',
        'prop': 'one',
      };

      final result = Mapper.fromMap<Asd>(someJson);

      expect(result, const TypeMatcher<Class1>());
      if (result is! Class1) throw "";
      expect(result.prop, equals('one'));
    });

    test('class 2 work', () {
      const someJson = {
        'key': 'between_one',
        'another_key': 'two',
        'id': 'some-id',
        'anotherValue': 'kek',
        'prop': 'two',
      };

      final result = Mapper.fromMap<Asd>(someJson);

      expect(result, const TypeMatcher<Class2>());
      if (result is! Class2) throw "";
      expect(result.prop, equals('two'));
    });

    test('class 3 work', () {
      const someJson = {
        'key': 'between_two',
        'different_key': 'three',
        'id': 'some-id',
        'anotherValue': 'kek',
        'prop': 'three',
      };

      final result = Mapper.fromMap<Asd>(someJson);

      expect(result, const TypeMatcher<Class3>());
      if (result is! Class3) throw "";
      expect(result.prop, equals('three'));
      expect(result.someVal, equals('kek'));
    });

    test('class 4 work', () {
      const someJson = {
        'key': 'zxcvbnm',
        'yet_another_key': 'four',
        'id': 'some-id',
        'anotherValue': 'kek',
        'someVal': 'qwerty',
      };

      final result = Mapper.fromMap<Asd>(someJson);

      expect(result, const TypeMatcher<Class4>());
      if (result is! Class4) throw "";
      expect(result.prop, equals('default 4'));
    });

    test('class 5 work', () {
      const someJson = {
        'key': 'zxcvbnm',
        'my_super_special_key': 'five',
        'id': 'some-id',
        'anotherValue': 'kek',
        'someVal': 'qwerty',
      };

      final result = Mapper.fromMap<Asd>(someJson);

      expect(result, const TypeMatcher<Class5>());
      if (result is! Class5) throw "";
      expect(result.prop, equals('default 5'));
    });
  });
}
