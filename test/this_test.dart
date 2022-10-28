// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';
import 'package:freezed_problems/main.mapper.g.dart';
import 'package:freezed_problems/models/a.dart';
import 'package:freezed_problems/models/b.dart';
import 'package:freezed_problems/models/my_base.dart';

void main() {
  late A a;
  late B b;
  const id = "my-id";
  const aType = 'A';
  const aJson = {'type': aType, 'id': id};
  const bJson = {
    'value': {'id': id, 'type': aType}
  };

  setUp(() {
    a = const A(id);
    b = B(a);
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
}
