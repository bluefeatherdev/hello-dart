/// Playground: [forEach vs map]

/*
* ¿Cuándo usar forEach?
* - Al ejecutar acciones sin devolver nada.
* - Al ejecutar una función por cada elemento de una colección.
* - Al devolver siempre `void` (nada).
* - Imprimir, guardar en una base de datos, modificar variables externas, etc.

* ¿Cuándo usar map?
* - Al transformar elementos y devolver una nueva colección.
* - Al Aplicar una función a cada elemento y devolver una nueva colección 
*   con los resultados.
* - Al devolver un nuevo Iterable con los elementos transformados.
* - Al transformar datos, encadenar métodos como `map().where().toList()`, etc.
*/

void main() {
  /// Ejemplo [forEach]
  final items = [1, 2, 3];
  items.forEach((item) {
    print(item * 2);  // 2, 4, 6
  });

  /// Ejemplo [map]:
  final doubled = items.map((item) => item * 2).toList();
  print(doubled); // [2, 4, 6]

  /// Otro ejemplo [map]:
  final numbers = [1, 2, 3, 4, 5, 6];
  final result = numbers
    .where((n) => n.isOdd)  // Solo impares [1, 3, 5]
    .map((n) => n * n)  // Cuadrado de impares [1, 9, 25]
    .toList();
  print(result);  // [1, 9, 25]

  /// Otro ejemplo [map]:
  final fruits = ['apple', 'banana', 'orange', 'kiwi', 'grape'];
  final upperVowelFruits = fruits
    .where((word) => 'aeiou'.contains(word[0].toLowerCase()))
    .map((word) => word.toUpperCase())
    .toList();
  print(upperVowelFruits);  // [APPLE, ORANGE]
}
