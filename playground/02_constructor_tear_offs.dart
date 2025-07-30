/// Playground: [Tear-offs Constructor]

/*
* ¿Qué es el Constructor Tear-off?
* - Es una forma de referenciar constructores como si fueran funciones.
* - Permite almacenar un constructor en una variable sin ejecutarlo.
* - Se utiliza para pasar constructores como argumentos o callbacks.
* - Hace más expresivo el código, especialmente en programación funcional.

* Ideal para cosas como:
* - Factories dinámicas que construyen objetos según el tipo
* - Listas de constructores para construir instancias en lotes
* - Simplificar callbacks cuando se necesita una instancia rápida
* - Reemplazar funciones anónimas repetitivas al crear objetos
*/

// Point class
class Point {
  // Point attributes
  final double x;
  final double y;

  // Point Tear-offs constructor
  const Point(this.x, this.y);
}

void main() {
  // Tear-off del constructor
  final createPoint = Point.new;

  // Multiple point objects
  var p1 = createPoint(0, 0);
  var p2 = createPoint(1.5, 2.3);
  var p3 = createPoint(1.6, 2.5);

  // Print results
  print('Point 1: (${p1.x}, ${p1.y})');
  print('Point 2: (${p2.x}, ${p2.y})');
  print('Point 3: (${p3.x}, ${p3.y})');
}
