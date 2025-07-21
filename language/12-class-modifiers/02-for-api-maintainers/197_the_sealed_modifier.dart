/// Dart Class Modifiers: Class modifiers for API maintainers

/// The last modifier, `sealed`, is special. 
/// It exists primarily to enable [exhaustiveness checking] 
/// in pattern matching. If a switch has cases for every direct subtype 
/// of a type marked `sealed`, then the compiler knows the switch 
/// is exhaustive.
sealed class Amigo {}

class Lucky extends Amigo {}

class Dusty extends Amigo {}

class Ned extends Amigo {}

String lastName(Amigo amigo) => switch (amigo) {
  Lucky _ => 'Day',
  Dusty _ => 'Bottoms',
  Ned _ => 'Nederlander',
};

// D. Use a factory
Amigo makeFriend(String nombre) => switch (nombre) {
  'Lucky' => Lucky(),
  'Dusty' => Dusty(),
  'Ned' => Ned(),
  _ => throw ArgumentError('Friend not recognized'),
};

void main() {
  // A. Explicit use of the subtype
  Lucky lucky1 = Lucky();
  print(lucky1.runtimeType);  // Lucky
  print(lastName(lucky1)); // 'Day'

  // B. Use of the Superclass
  Amigo lucky2 = Lucky();
  print(lucky2.runtimeType);  // Lucky
  print(lastName(lucky2)); // 'Day'

  // C. Friends list
  List<Amigo> amigos = [Lucky(), Dusty(), Ned()];
  for (var amigo in amigos) {
    print(amigo.runtimeType); // 'Lucky', 'Dusty', 'Ned'
    print(lastName(amigo)); // 'Day', 'Bottoms', 'Nederlander'
  }

  // D. Use a factory
  final amigo = makeFriend('Lucky');
  print(amigo.runtimeType); // 'Lucky'
  print(lastName(amigo)); // 'Day'
}
