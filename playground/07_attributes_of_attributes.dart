/// Playground: [Attributes of Attributes]

/*
* ¿Cómo crear atributos de atributos en Dart?
* - Define clases que representen cada nivel de abstracción o entidad.
* - Usa composición: incluye instancias de otras clases como atributos.
* - Declara los atributos como `final` para garantizar inmutabilidad, 
*   y usa `?` si pueden ser nulos.

* ¿Cuándo usar atributos de atributos en Dart?
* - Cuando modelas relaciones jerárquicas o estructuras anidadas 
*   (por ejemplo, un `User` con un `Profile` que tiene una `Settings`).
* - Para mejorar la organización del código y separar responsabilidades por clase.
* - Cuando necesitas acceder a propiedades profundas de forma segura 
*   usando null safety (`?.` y `??`).
*/

/// Representa un componente básico con un nombre identificador.
/// Esta clase es el nivel más profundo en la jerarquía de atributos.
class Gizmo {
  final String name;
  Gizmo(this.name);
}

/// Contiene un objeto `Gizmo` como atributo.
/// Ilustra cómo una clase puede contener otra clase como propiedad.
class Doohickey {
  final Gizmo gizmo;
  Doohickey(this.gizmo);
}

/// Clase principal que puede contener un `Doohickey`.
/// Demuestra cómo modelar relaciones opcionales entre objetos.
class Thing {
  final Doohickey? doohickey;
  Thing({this.doohickey});
}

/// Muestra el nombre del gizmo asociado a un objeto `Thing`.
/// Utiliza navegación segura (`?.`) y valor por defecto (`??`) 
/// para evitar errores por null.
void showGizmo(Thing? thing) {
  print(thing?.doohickey?.gizmo.name ?? 'No gizmo found');
}

void main() {
  // Instancias de clases 
  final gizmo = Gizmo('SuperGizmo');
  final doohickey = Doohickey(gizmo);
  final thing = Thing(doohickey: doohickey);

  // Mostrar resultados
  showGizmo(thing); // Prints: SuperGizmo
  showGizmo(Thing()); // Prints: No gizmo found
}
