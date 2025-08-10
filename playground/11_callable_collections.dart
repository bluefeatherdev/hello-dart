/// Playground: [Callable Collections]

/*
* Una colección de ejemplos variados que muestran cómo 
* guardar funciones llamables en diferentes estructuras de Dart.
* - Lista con funciones anónimas
* - Lista con funciones tipadas
* - Mapa con funciones como valores
* - Set con funciones (usando typedef para claridad)
* - Funciones como elementos de una clase
*/

/// 1. Lista con funciones anónimas
List<Function> actions = [
  () => print('Hello, Dart!'),
  () => 23,
  () => DateTime.now().year,
];

/// 2. Lista con funciones tipadas
List<String Function()> greetings = [
  () => 'Hola',
  () => 'Hello',
  () => 'Bonjour',
];

/// 3. Mapa con funciones como valores
Map<String, int Function(int, int)> mathOps = {
  'sum': (a, b) => a + b,
  'sub': (a, b) => a - b,
  'prod': (a, b) => a * b,
};

/// 4. Set con funciones (usando typedef para claridad)
typedef VoidCallback = void Function();

Set<VoidCallback> callbacks = {
  () => print('Callback 1'),
  () => print('Callback 2'),
};

/// 5. Funciones como elementos de una clase
class ActionHolder {
  final Map<String, Function> actions;
  
  ActionHolder(this.actions);

  void execute(String key) {
    if (actions.containsKey(key)) {
      actions[key]!();
    }
  }
}

final holder = ActionHolder({
  'sayHi': () => print('I say hi!'),
  'sayBye': () => print('I say bye!'),
});

void main() {
  /// 1. Lista con funciones anónimas
  actions[0](); // Hello, Dart!
  print(actions[1]());  // 23
  print(actions[2]());  // 2025

  /// 2. Lista con funciones tipadas
  for (final greet in greetings) {
    print(greet()); // Hola, Hello, Bonjour
  }

  /// 3. Mapa con funciones como valores
  for (final key in mathOps.keys) {
    print(mathOps[key]!(3, 4)); // ...
  }

  /// 4. Set con funciones (usando typedef para claridad)
  for (final cb in callbacks) {
    cb(); // Ejecuta cada callback
  }

  /// 5. Funciones como elementos de una clase
  holder.execute('sayHi');  // I say hi!
  holder.execute('sayBye'); // I say bye!
}
