// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';
import 'package:freezed_problems/models/a.dart';
import 'package:freezed_problems/models/b.dart';

void main() {
  late A a;
  late B b;
  const myId = "my-id";

  setUp(() {
    a = const A(myId);
    b = B(a);
  });

  test('problem 1', () {
    const anotherId = 'another-id';

    // This is _still_ an open problem!
    print(b.myValue.copyWith(id: anotherId));
  });

  test('problem 2', () {
    expect(b.myValue.toJson(), {'id': 'my-id'});
  });
}
