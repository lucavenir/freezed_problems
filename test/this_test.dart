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
import 'package:freezed_problems/models/base.dart';

void main() {
  late A a;
  late B b;
  const myId = "my-id";
  const myJson = {
    'value': {'key': 'a', 'id': myId}
  };
  const myBJsonResult = {
    'myValue': {'id': myId}
  };

  setUp(() {
    a = const A(myId);
    b = B(a);
  });

  test('problem 1', () {
    const anotherId = 'another-id';

    final a = Mapper.fromMap<Base>({'id': 'id', 'type': 'a'});
    final b = a.id;

    print(a.runtimeType);
    print(a);

    // This is _still_ an open problem!
    // print(b.myValue.copyWith(id: anotherId));
  });

  test('problem 2.1', () {
    // This passes. It is weird and maybe unneeded, but still.
    expect(b.toJson(), equals(myBJsonResult));
  });

  test('problem 2.2', () {
    // This fails! Which is weird! (serialization and deserialization alter the values)
    expect(b.toJson(), equals(myJson));
  });

  test('problem 3', () {
    final b = Mapper.fromMap<B>(myJson);
  });
}
