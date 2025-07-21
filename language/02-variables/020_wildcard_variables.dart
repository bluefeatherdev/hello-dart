// Wildcard Variables in Dart
/// Require a language version of at least [3.7.]

// Generic type and function type parameters
class T<_> {}
void genericFunction<_>() {}
// takeGenericCallback(<_>() => true);

void main() {
  // Local variable declaration
  var _ = 1;
  int _ = 2;
  
  // For loop variable declaration
  const list = [1, 2, 3];
  for (var _ in list) {}

  // Catch clause parameters
  try {
    throw '!';
  } catch (_) {
    print('oops');
  }

  // Function parameters
  // Foo(_, this._, super._, void _()) {} // Use it in classes...

  // list.where((_) => true);

  // void f(void g(int _, bool _)) {}

  // typedef T = void Function(String _, String _);
}
