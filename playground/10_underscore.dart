/// Playground: [Underscore]

/*
* ¿Qué usos tiene el underscore `_` en Dart?:
* - Ignorar valores en desestructuración o parámetros.
* - Indicar privacidad en nombres de variables, funciones o clases.
* - Usar como nombre de variable temporal en funciones flecha.
* - Crear constructores privados con `Nombre._()`.
* - Evitar advertencias de variables no utilizadas.
* - Representar identificadores anónimos en expresiones.
*/

void main() {
  // 1. Ignorar valores en desestructuración o parámetros
  var (_, second) = ('one', 'two');
  print('Second value: $second'); // Second value: two

  // 2. Indicar privacidad (solo accesible dentro del mismo archivo)
  final _privateValue = 23;
  print('Private value: $_privateValue'); // Private value: 23

  // 3. Variable temporal en funciones flecha
  final myList = [1, 2, 3];
  myList.forEach((_) => print('Processed element'));  // ...

  // 4. Constructor privado
  final instance = PrivateClass._();
  instance.greet(); // Hello, from PrivateClass!

  // 5. Evitar advertencias de variables no utilizadas
  for (var _ in [true, false, true]) {
    print('Iteration without using value'); // ...
  }

  // 6. Identificador anónimo en expresiones
  final result = myList.map((_) => 'check').toList();
  print('Result: $result'); // Result: [check, check, check]

  // 7. & 8. Mixins privados, o campos privados en Mixins
  final service = Service.instance;
  service.doSomething();  // Log: Count increased: 1
  service.doSomething();  // Log: Count increased: 2
  print('Final count: ${service.getCount()}');  // Final count: 2

}

class PrivateClass {
  // Private constructor
  PrivateClass._();
  void greet() => print('Hello, from PrivateClass!');
}

// 7. Mixins privados, accesibles solo dentro la misma librería
mixin _Logger {
  void log(String msg) => print('Log: $msg');
}

// 8. Campos privados dentro del mixin
mixin Counter {
  int _count = 0;

  void increase() => _count++;
  int getCount() => _count;
}

class Service with Counter, _Logger {
  Service._();
  static final instance = Service._();

  void doSomething() {
    increase();
    log('Count increased: ${getCount()}');
  }
}
