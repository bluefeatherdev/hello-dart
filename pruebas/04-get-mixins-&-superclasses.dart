/// Pruebas personales: [Obtener mixins y superclases] de una clase
import 'dart:mirrors';

// Superclass
class Base {}

// Mixins
mixin Foo {}
mixin Bar {}

// Clase de prueba
class MyClass extends Base with Foo, Bar {}

void main() {
  final mirror = reflectClass(MyClass);
  final typeChain = <String>[];

  // Get the names of the chain
  ClassMirror? current = mirror.superclass;

  while (current != null && current.reflectedType.toString().startsWith('_')) {
    typeChain.add(current.reflectedType.toString());
    current = current.superclass;
  }

  // Last superclass "named"
  final superClass = current?.reflectedType.toString();

  // Analyze the confused name (mixins)
  final fullName = typeChain.firstWhere(
    (name) => name.contains('&'),
    orElse: () => '',
  );

  // Prepare the mixin names
  final parts = fullName.split('&');
  final mixins = parts.sublist(2);

  // Print result
  print('MyClass: $MyClass');
  print('Superclass: $superClass');
  print('Used mixins: ${mixins.join(', ')}');
}
