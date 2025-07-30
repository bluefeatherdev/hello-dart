/// Playground: [Parameter Types]

/// [Obligatorios]:
/// Parámetros que deben ser proporcionados al llamar la función.
/// Cuando el valor es esencial para la lógica de la función.
void greet(String name) {
  print('Hello, $name!');
}

/// [Opcionales Posicionales]:
/// Parámetros que pueden omitirse; se definen entre corchetes `[]`.
/// Cuando el parámetro tiene un valor por defecto o no siempre se necesita.
void showAge(String name, [int age = 0]) {
  print('$name is $age years old.');
}

/// [Nombrados]:
/// Parámetros que se especifican por nombre al llamar la función; 
/// se definen entre llaves `{}`.
/// Cuando hay muchos parámetros o se quiere mayor claridad.
void createUser({required String name, int age = 18}) {
  print('User: $name, Age: $age.');
}

/// [Nullable]:
/// Parámetros que pueden aceptar null; se definen con `?`.
/// Cuando el valor puede estar ausente o no disponible.
void showMessage(String? message) {
  print('Message: ${message ?? 'No message'}');
}

/// [Combinados]:
/// Funciones que combinan varios tipos de parámetros.
/// Para flexibilidad y control en funciones más complejas.
void newEvent(String title, {DateTime? date, String place = 'Virtual'}) {
  print('Event: $title');
  print('Date: ${date ?? 'To be defined'}');
  print('Place: $place');
}

/// [Funciones como parámetros]:
/// Parámetros que pueden aceptar otra función.
/// Cuando llamas a otras funciones en cadena.
void thisFunction(void Function() thatFunction) {
  print('Doing thisFunction...');
  thatFunction();
}

void thatFunction() {
  print('Doing thatFunction...');
}

void main() {
  /// [Obligatorios]:
  greet('Jesús');

  /// [Opcionales Posicionales]:
  showAge('Jesús');
  showAge('Jesús', 21);

  /// [Nombrados]:
  createUser(name: 'Jesús');
  createUser(name: 'Jesús', age: 21);

  /// [Nullable]:
  showMessage('How are you?');
  showMessage(null);

  /// [Combinados]:
  newEvent('Conferencia Dart');
  newEvent(
    'Meetup Flutter', 
    date: DateTime(2025, 8, 15),
    place: 'Barcelona',
  );

  /// [Funciones como parámetros]:
  thisFunction(thatFunction);
}
