/// Dart Null Safety: [Understanding null safety]

/// One of the neat features of Dart is that it upholds a thing called 
/// the [uniform access principle]. In human terms it means that fields 
/// are indistinguishable from getters and setters. It's an implementation 
/// detail whether a "property" in some Dart class is computed or stored. 
/// Because of this, when defining an interface using an abstract class, 
/// it's typical to use a field declaration:
class Beverage {}

/// ```dart
/// abstract class Cup {
///   Beverage contents;
/// }
/// ```

/// The intent is that users only implement that class and don't extend it. 
/// The field syntax is simply a shorter way of writing a getter/setter pair:
/// ```dart
/// abstract class Cup {
///   Beverage get contents;
///   set contents(Beverage);
/// }
/// ```

/// But Dart doesn't [know] that this class will never be used as a 
/// concrete type. It sees that contents declaration as a real field. 
/// And, unfortunately, that field is non-nullable and has no initializer, 
/// so you get a compile error.

/// One fix is to use explicit abstract getter/setter declarations like 
/// in the second example. But that's a little verbose, so with null safety 
/// we also added support for explicit abstract field declarations:
abstract class Cup2 {
  abstract Beverage contents;
}

/// This behaves exactly like the second example. 
/// It simply declares an abstract getter and setter 
/// with the given name and type.

void main() {
  print('Hello, Dart!');
}

/// If a server application fails, you can often restart it 
/// before anyone notices. But when a Flutter app crashes on 
/// a user's phone, they are not happy. When your users aren't happy, 
/// you aren't happy.
