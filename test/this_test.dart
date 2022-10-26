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
    b = B([a]);
  });

  test('problem 1', () {
    expect(b.myListofBase.first, equals({'id': myId}));
  });

  test('problem 2', () {
    const anotherId = 'another-id';

    // I'd like the following to compile and just... work!
    b.myListofBase.forEach((element) {
      print(element.copyWith(id: anotherId));
    });
  });
}
