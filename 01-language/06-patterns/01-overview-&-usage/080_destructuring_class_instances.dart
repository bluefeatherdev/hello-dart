// Dart Patterns: Overview & usage

/// [Object patterns] match against named object types, 
/// allowing you to destructure their data using 
/// the getters the object's class already exposes.
class Foo {
  final String one;
  final String two;

  Foo({required this.one, required this.two});
}

void main() {
  /// To destructure an instance of a class, use the named type, 
  /// followed by the properties to destructure enclosed in parentheses:
  final Foo myFoo = Foo(one: 'one', two: '2');
  var Foo(:one, :two) = myFoo;
  print('one $one, two $two');  // Prints: one one, two 2
}
