/// Playground: [Attribute Combinations]

/// [Objetivo]:
/// Explorar cómo se comportan diferentes combinaciones de modificadores 
/// y tipos al definir atributos en clases Dart con null safety.

class AttributeExamples {
  /// `final`: debe ser inicializado en la declaración o constructor
  final int finalAtrr = 23;

  /// `late`: inicializado después, pero antes de usarse
  late int lateAtrr;

  /// [nullable]: puede ser `null`
  int? nullableAtrr; 

  /// [no nullable]: debe tener valor antes de usarse
  int noNullableAtrr = 69; 

  /// `const`: solo se permite en [variables estáticas] o [top-level]
  static const int constAttr = 92; 

  /// `late final`: inicializado una vez, antes de usarse
  late final int lateFinalAtrr;

  /// Extra: `static`: Variable compartida entre todas las instancias de la clase
  static String myName = 'Jesús';

  /// Extra: `static const`: Variable compartida y constante en tiempo de compilación
  static const double phi = 1.61803;

  /// Extra: `static final`: Variable cuyo valor se asigna una sola vez, pero puede ser calculado.
  static final String launchTime = DateTime.now().toIso8601String();

  /// Constructor
  AttributeExamples(this.noNullableAtrr) {
    lateAtrr = 46;
    nullableAtrr = null;
    lateFinalAtrr = 115;
  }
}

/// `final`: debe ser inicializado en la declaración o constructor
void finalExample() {
  final example = AttributeExamples(1);
  print('finalAtrr: ${example.finalAtrr}');
}

/// `late`: inicializado después, pero antes de usarse
void lateExample() {
  final example = AttributeExamples(2);
  print('lateAtrr: ${example.lateAtrr}');
}

/// [nullable]: puede ser `null`
void nullableExample() {
  final example = AttributeExamples(3);
  print('nullableAtrr: ${example.nullableAtrr}');
}

/// [no nullable]: debe tener valor antes de usarse
void noNullableExample() {
  final example = AttributeExamples(4);
  print('noNullableAtrr: ${example.noNullableAtrr}');
}

/// `const`: solo se permite en [variables estáticas] o [top-level]
void constExample() {
  print('constAtrr: ${AttributeExamples.constAttr}');
}

/// `late final`: inicializado una vez, antes de usarse
void lateFinalExample() {
  final example = AttributeExamples(5);
  print('lateFinalAtrr: ${example.lateFinalAtrr}');
}

/// Extra: `static`` variables
void staticVariablesExample() {
  print('myName: ${AttributeExamples.myName}');
  print('phi: ${AttributeExamples.phi}');
  print('launchTime: ${AttributeExamples.launchTime}');
}

void main() {
  finalExample(); // finalAtrr: 23
  lateExample();  // lateAtrr: 46
  nullableExample();  // nullableAtrr: null
  noNullableExample();  // noNullableAtrr: 4
  constExample(); // constAtrr: 92
  lateFinalExample(); // lateFinalAtrr: 115
  staticVariablesExample(); // myName: Jesús, phi: 1.61803, launchTime: your launchTime
}
