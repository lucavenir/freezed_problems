# freezed_problems

I can't seem to understand how to make the following work.
Say we have:
  - Some `Base` abstract class, which is there to define a common contract.
  - Some class `A` that extends such `Base` class.
  - Imagine having also `C`, `Z`, etc. extending the `Base` class
  - Now, `A` (but eventually also `C` and `Z`) needs to be implemented with Freezed (with also JSON serialization / deserialization)
  - See [a.dart](lib/models/a.dart) and [base.dart](lib/models/base.dart) to check the implementation

## Goal
Now, my goal is to have a class `B` that has a `List` of `Base` objects (!) and that needs to be implemented with Freezed.
I'd like to interact with those objects organically, respecting my contracts and while exploiting Freezed's API.

See [this_test.dart](test/this_test.dart) for the desired outcome.

## Problem 1
Rightfully, `build_runner` complains that it can't implement the `fromJson` method because `Base` has no `@JsonSerializable` method.
But implementing a converter just won't do (uncomment line 11). I need _my subclasses_, with their `fromJson` and `toJson` methods to be called, there.

How can achieve this in a clean way?

## Problem 2
I'd like the `Base` class to expose all the methods that freezed builds for its subclasses. Take the following snippet (warn: pseudocode):

```dart

final b = B(...);
final myList = b.myListofBase;
for(final element in myList) print(myList.copyWith(id: "a random id"))
```

Besides being pseudocode, the previous snippet obviously won't work, because the method `copyWith` isn't exposed onto class `Base`.
Considering that all its subclasses use freezed, how can we write `Base` such that it exposes freezed's methods?
