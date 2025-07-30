/// Playground: [Singleton Pattern]

/*
* ¿Qué es el patrón Singleton?
* - El Singleton es un patrón de diseño creacional que:
* - Restringe la creación de múltiples instancias de una clase.
* - Garantiza una única instancia accesible globalmente.
* - Se apoya en miembros static para almacenar esa instancia única.
*
* Ideal para cosas como:
* - Configuraciones globales
* - Gestores de recursos
* - Conexiones de base de datos
* - Clases que actúan como 'registro' o 'logger'
*/

class Logger {
  static final Logger _instanciaUnica = Logger._interno();

  // Constructor privado
  Logger._interno();

  // Método estático de acceso
  static Logger get instancia => _instanciaUnica;

  void log(String mensaje) {
    print('🪵 $mensaje');
  }
}

void main() {
  Logger.instancia.log('Primer log');
  Logger.instancia.log('Segundo log');
}
