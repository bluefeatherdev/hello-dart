// Operators in Dart
void main() {
  /* 
    * as  : Typecast (also used to specify library prefixes)
    * is  : True if the object has the specified type
    * is! : True if the object doesn't have the specified type
  */
  
  // // Coming soon: Typecast...
  /// Use the [as] operator to cast an object 
  /// to a particular type if and only if 
  /// you are sure that the object is of that type. 
  // (employee as Person).firstName = 'bob';

  /// If you aren't sure that the object is of type [T], 
  /// then use is [T] to check the type before using the object
  // if (employee is Person) {
  //   // Type check
  //   employee.firstName = 'Bob';
  // }

  print('Hello, Dart!');
}
