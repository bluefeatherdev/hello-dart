/// Playground: [Using My First Module]

import '../my-modules/analyzeClassMixins.dart';

// Superclasses
class MyClassA {}
class MyClassB {}

// Mixins
mixin MyMixin1 {}
mixin MyMixin2 {}
mixin MyMixin3 {}
mixin MyMixin4 {}

// Subclasses
class MyClassC extends MyClassA with MyMixin1, MyMixin2 {}
class MyClassD extends MyClassB with MyMixin3, MyMixin4 {}

void main() {
  for (final type in [MyClassC, MyClassD]) {
    print('Analysis of ${type.toString()}');
    print(analyzeClassMixins(type));
    print('');
  }
}
