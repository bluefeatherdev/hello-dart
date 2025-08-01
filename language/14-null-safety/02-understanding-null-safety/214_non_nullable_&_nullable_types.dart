/// Dart Null Safety: [Understanding null safety]

// Using null safety:
void makeCoffee(String coffee, [String? dairy]) {
  if (dairy != null) {
    print('$coffee with $dairy');
  } else {
    print('Black $coffee');
  }
}

void main() {
  makeCoffee('Espresso');
  makeCoffee('Mazagran', null);
  makeCoffee('Cappuccino', 'Steamed milk');
}

/// If a server application fails, you can often restart it 
/// before anyone notices. But when a Flutter app crashes on 
/// a user's phone, they are not happy. When your users aren't happy, 
/// you aren't happy.
