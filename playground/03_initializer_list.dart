/// Pruebas personales: [Initializer list] en constructores

/*
* ¿Qué es la initializer list?
* - Es una sección especial del constructor que se ejecuta antes del cuerpo.
* - Permite asignar valores a campos `final` o inicializar variables antes de la lógica del constructor.
* - Se define luego de los dos puntos (:) en un constructor.
* - Se puede usar para llamadas a constructores padre, validaciones (assert), o transformar parámetros.

* Ideal para cosas como:
* - Inicializar campos `final` con cálculos o constantes.
* - Validar parámetros con `assert` antes de construir el objeto.
* - Invocar constructores de superclases en clases hijas.
* - Asignar valores derivados de parámetros en lugar de usar lógica dentro del cuerpo del constructor.
*/

class Rectangulo {
  final double ancho;
  final double alto;
  final double area;

  Rectangulo(this.ancho, this.alto)
    : assert(ancho > 0 && alto > 0, 'Solo dimensiones positivas'),
      area = ancho * alto;

  @override
  String toString() => 
    'Rectangulo(ancho: $ancho, alto: $alto, área: $area)';
}

void main() {
  var r1 = Rectangulo(4, 5);
  var r2 = Rectangulo(2.5, 3);

  print(r1);  // Prints: Rectangulo(ancho: 4.0, alto: 5.0, área: 20.0)
  print(r2);  // Prints: Rectangulo(ancho: 2.5, alto: 3.0, área: 7.5)
}
