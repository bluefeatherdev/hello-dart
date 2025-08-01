/// Dart Null Safety: [Understanding null safety]

/// The most common place where the [type checker] cannot prove the safety 
/// of code is around [top-level variables and fields]. Here is an example:

// Using null safety:
class Coffee {
  /// Because the type checker can't analyze uses of fields and top-level 
  /// variables, it has a conservative rule that non-nullable fields have 
  /// to be initialized either at their declaration (or in the constructor 
  /// initialization list for instance fields). So Dart reports a compile 
  /// error on this class.
  /// `String _temperature;`

  // You can fix the error by making the field nullable 
  // and then using not-null assertion operators on the uses:
  String? _temperature;

  void heat() { _temperature = 'hot'; }
  void chill() { _temperature = 'iced'; }

  String serve() => _temperature! + ' coffee';
}

/// This works fine. But it sends a confusing signal to the maintainer 
/// of the class. By marking `_temperature` nullable, you imply that `null` 
/// is a useful, meaningful value for that field. But that's not the intent. 
/// The `_temperature` field should never be observed in its `null` state.

/// To handle the common pattern of state with delayed initialization, 
/// we've added a new modifier, `late`. You can use it like this:

// Using null safety:
class LateCoffee {
  /// Giving the variable the type `String` means "you should never see me 
  /// with a value other than a string" and the `late` modifier means 
  /// "verify that at runtime".
  
  late String _temperature;

  void heat() { _temperature = 'hot'; }
  void chill() { _temperature = 'iced'; }

  String serve() => _temperature + ' coffee'; 

  /// The `late` modifier lets you [defer] initialization, 
  /// but still prohibits you from treating it like a nullable variable.
}

void main() {
  var coffee = Coffee();
  coffee.heat();
  print(coffee.serve());  // hot coffee

  var lateCoffee = LateCoffee();
  lateCoffee.chill();
  print(lateCoffee.serve());  // iced coffee
}

/// If a server application fails, you can often restart it 
/// before anyone notices. But when a Flutter app crashes on 
/// a user's phone, they are not happy. When your users aren't happy, 
/// you aren't happy.
