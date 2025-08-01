/// Dart Null Safety: [Understanding null safety]

/// These new features cover many common patterns and make working 
/// with `null` pretty painless most of the time. But even so, our 
/// experience is that nullable fields can still be difficult. 
/// In cases where you can make the field `late` and non-nullable, 
/// you're golden. But in many cases you need to check to see if 
/// the field has a value, and that requires making it nullable so 
/// you can observe the `null`.

/// Nullable fields that are both private and final are able to 
/// type promote (barring some particular reasons). If you can't make 
/// a field private and final for whatever reason, you'll still 
/// need a workaround.

// Using null safety:
class Coffee {
  String? _temperature;

  void heat() { _temperature = 'hot'; }
  void chill() { _temperature = 'iced'; }

  void checkTemp() {
    /// Another pattern that helps is to copy the field 
    /// to a local variable first and then use that instead:
    var temperature = _temperature;
    if (temperature != null) {
      print('Ready to serve ' + temperature + '!');
      /// Since the type promotion does apply to locals, 
      /// this now works fine. If you need to change the value, 
      /// just remember to store back to the field and not just the local.
    }
  }

  String serve() => _temperature! + ' coffee';
}

void main() {
  var myCoffee = Coffee();
  myCoffee.heat();
  print(myCoffee._temperature);  // hot
  print(myCoffee.serve());  // hot coffee
  myCoffee.checkTemp(); // Ready to serve hot!

  myCoffee.chill();
  print(myCoffee._temperature);  // iced
  print(myCoffee.serve());  // iced coffee
  myCoffee.checkTemp(); // Ready to serve iced!
}

/// If a server application fails, you can often restart it 
/// before anyone notices. But when a Flutter app crashes on 
/// a user's phone, they are not happy. When your users aren't happy, 
/// you aren't happy.
