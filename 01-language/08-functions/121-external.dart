// Dart Functions: Functions

/// An external function is a function whose body is implemented separately from its declaration. 
/// Include the `external` keyword before a function declaration, like so:
external void someFunc(int i);

void main() {  
  /// An external function's implementation can come from another Dart library, 
  /// or, more commonly, from another language. In interop contexts, `external` 
  /// introduces type information for foreign functions or values, making them 
  /// usable in Dart. Implementation and usage is heavily platform specific, 
  /// so check out the interop docs on, for example, [C] or [JavaScript] to learn more.
  
  /// External functions can be [top-level functions],[ instance methods], [getters or setters], 
  /// or [non-redirecting constructors]. An [instance variable] can be `external` too, 
  /// which is equivalent to an external getter and (if the variable is not `final`) 
  /// an external setter.

  print('Hello, Dart!');
}
