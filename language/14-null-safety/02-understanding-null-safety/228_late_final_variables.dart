/// Dart Null Safety: [Understanding null safety]

/// You can also combine `late` with `final`:

// Using null safety:
class Coffee {
  late final String _temperature;

  void heat() { _temperature = 'hot'; }
  void chill() { _temperature = 'iced'; }

  String serve() => _temperature + ' coffee';

  /// Unlike normal `final` fields, you do not have to initialize 
  /// the field in its declaration or in the constructor initialization 
  /// list. You can assign to it later at runtime. But you can only 
  /// assign to it once, and that fact is checked at runtime. If you 
  /// try to assign to it more than once—like calling both `heat()` and 
  /// `chill()` here—the second assignment throws an exception. This is 
  /// a great way to model state that gets initialized eventually and 
  /// is immutable afterwards.
  
  /// In other words, the new `late` modifier in combination with Dart's 
  /// other variable modifiers covers most of the feature space of 
  /// `lateinit` in Kotlin and `lazy` in Swift. You can even use it on 
  /// local variables if you want a little local lazy evaluation.
}

void main() {
  var myCoffee = Coffee();
  print(myCoffee);
  // print(myCoffee._temperature); // Field has not been initialized
  // print(myCoffee.serve());  // Field has not been initialized

  myCoffee.heat();  // Field initialized just once
  print(myCoffee._temperature);  // hot
  print(myCoffee.serve());  // hot coffee

  // myCoffee.chill(); // Field has already been initialized
  // print(myCoffee._temperature);  // iced
  // print(myCoffee.serve());  // iced coffee
}

/// If a server application fails, you can often restart it 
/// before anyone notices. But when a Flutter app crashes on 
/// a user's phone, they are not happy. When your users aren't happy, 
/// you aren't happy.
