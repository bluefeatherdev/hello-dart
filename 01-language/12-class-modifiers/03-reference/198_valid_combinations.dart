/// Dart Class Modifiers: Reference

/// The valid combinations of class modifiers 
/// and their resulting capabilities are:

/// 1. class
class A {
  /// Constructor?: [Yes]
  A(this.name);

  final String name;

  void greet() => 
    print('A: Hello, $name!');
}

/// Extend?: [Yes]
class ExtendedA extends A {
  ExtendedA(String name) : super(name);

  @override
  void greet() =>
    print('ExtendedA: Hello, $name!');
}

/// Implement?: [Yes]
class ImplementedA implements A {
  @override
  String get name => 'Blue Feather';

  @override
  void greet() =>
    print('ImplementedA: Hello, $name!');
}

/// Mixin?: [No]
/// `mixin MixinA on A {}`

/// Exhaustive?: [No]
/// ```dart
/// switch (a) {
///   case A():
///   // ..
/// }
/// ```

/// 2. [base class]
base class B {
  /// Constructor?: [Yes]
  B(this.name);

  final String name;

  void greet() => 
    print('B: Hello, $name!');
}

/// Extend?: [Yes]
base class ExtendedB extends B {
  ExtendedB(String name) : super(name);

  @override
  void greet() =>
    print('ExtendedB: Hello, $name!');
}

/// Implement?: [Yes]
base class ImplementedB implements B {
  @override
  String get name => 'Blue Feather';

  @override
  void greet() =>
    print('ImplementedB: Hello, $name!');
}

/// Mixin?: [No]
/// `mixin MixinB on B {}`

/// Exhaustive?: [No]
/// ```dart
/// switch (b) {
///   case B():
///   // ..
/// }
/// ```

/// 3. [interface class]
interface class C {
  /// Constructor?: [No]
  String get name => 
    'Jesús';

  void greet() => 
    print('C: Hello, $name!');
}

/// Extend?: [Yes]
class ExtendedC extends C {
  @override
  String get name =>
    'Blue Feather';

  @override
  void greet() => 
    print('ExtendedC: Hello, $name!');
}

/// Implement?: [Yes]
class ImplementedC implements C {
  @override
  String get name => 'Blue Feather';

  @override
  void greet() =>
    print('ImplementedC: Hello, $name!');
}

/// Mixin?: [No]
/// `mixin MixinC on C {}`

/// Exhaustive?: [No]
/// ```dart
/// switch (c) {
///   case C():
///   // ..
/// }
/// ```

/// 4. [final class]
final class D {
  /// Constructor?: [Yes]
  D(this.name);

  final String name;

  void greet() => 
    print('D: Hello, $name!');
}

/// Extend?: [Yes]
final class ExtendedD extends D {
  ExtendedD(String name) : super(name);

  @override
  void greet() =>
    print('ExtendedD: Hello, $name!');
}

/// Implement?: [Yes]
final class ImplementedD implements D {
  @override
  String get name => 'Blue Feather';

  @override
  void greet() =>
    print('ImplementedD: Hello, $name!');
}

/// Mixin?: [No]
/// `mixin MixinD on D {}`

/// Exhaustive?: [No]
/// ```dart
/// switch (d) {
///   case D():
///   // ..
/// }
/// ```

/// 5. [sealed class]
sealed class E {
  /// Constructor?: [No]
  void greet();
}

/// Extend?: [Yes]
final class ExtendedE extends E {
  @override
  void greet() =>
    print('ExtendedE: Hello, Blue Feather!');
}

/// Implement?: [Yes]
final class ImplementedE implements E {
  @override
  void greet() =>
    print('ImplementedE: Hello, Blue Feather!');
}

/// Mixin?: [No]
/// `mixin MixinE on E {}`

/// Exhaustive?: [Yes]
/// Look at `main()`

/// 6. [abstract class]
abstract class F {
  /// Constructor?: [Yes, but abstract]
  F();

  String get name;
  void greet();
}

/// Extend?: [Yes]
class ExtendedF extends F {
  ExtendedF();

  @override
  String get name => 'Jesús';

  @override
  void greet() =>
    print('ExtendedF: Hello, $name!');
}

/// Implement?: [Yes]
class ImplementedF implements F {
  @override
  String get name => 'Blue Feather';

  @override
  void greet() =>
    print('ImplementedF: Hello, $name!');
}

/// Mixin?: [No]
/// `mixin MixinF on F {}`

/// Exhaustive?: [No]
/// ```dart
/// switch (f) {
///   case F():
///   // ..
/// }
/// ```

/// 7. [abstract base class]
abstract base class G {
  /// Constructor?: [Yes, but abstract]
  G();

  String get name;
  void greet();
}

/// Extend?: [Yes]
base class ExtendedG extends G {
  ExtendedG();

  @override
  String get name => 'Jesús';

  @override
  void greet() =>
    print('ExtendedG: Hello, $name!');
}

/// Implement?: [Yes]
base class ImplementedG implements G {
  @override
  String get name => 'Blue Feather';

  @override
  void greet() =>
    print('ImplementedG: Hello, $name!');
}

/// Mixin?: [No]
/// `mixin MixinG on G {}`

/// Exhaustive?: [No]
/// ```dart
/// switch (g) {
///   case G():
///   // ..
/// }
/// ```

/// 8. [abstract interface class]
abstract interface class H {
  /// Constructor?: [Yes, but abstract]
  String get name;
  void greet();
}

/// Extend?: [Yes]
class ExtendedH extends H {
  @override
  String get name => 'Jesús';

  @override
  void greet() =>
    print('ExtendedH: Hello, $name!');
}

/// Implement?: [Yes]
class ImplementedH implements H {
  @override
  String get name => 'Blue Feather';

  @override
  void greet() =>
    print('ImplementedH: Hello, $name!');
}

/// Mixin?: [No]
/// `mixin MixinH on H {}`

/// Exhaustive?: [No]
/// ```dart
/// switch (h) {
///   case H():
///   // ..
/// }
/// ```

/// 9. [abstract final class]
abstract final class I {
  /// Constructor?: [Yes, but abstract]
  String get name;
  void greet();
}

/// Extend?: [Yes]
final class ExtendedI extends I {
  @override
  String get name => 'Jesús';

  @override
  void greet() =>
    print('ExtendedI: Hello, $name!');
}

/// Implement?: [Yes]
final class ImplementedI implements I {
  @override
  String get name => 'Blue Feather';

  @override
  void greet() =>
    print('ImplementedI: Hello, $name!');
}

/// Mixin?: [No]
/// `mixin MixinI on I {}`

/// Exhaustive?: [No]
/// ```dart
/// switch (i) {
///   case I():
///   // ..
/// }
/// ```

/// 10. [mixin class]
mixin class J {
  /// Constructor?: [No]
  void greet() => 
    print('J: Hello, Jesús!');
}

/// Extend?: [Yes]
class ExtendedJ extends J {
  @override
  void greet() =>
    print('ExtendedJ: Hello, Jesús!');
}

/// Implement?: [Yes]
class ImplementedJ implements J {
  @override
  void greet() =>
    print('ImplementedJ: Hello, Blue Feather!');
}

/// Mixin?: [Yes]
class MixinJ with J {
  void run() => greet();
}

/// Exhaustive?: [No]
/// ```dart
/// switch (j) {
///   case J():
///   // ..
/// }
/// ```

/// 11. [base mixin class]
base mixin class K {
  /// Constructor?: [No]
  void greet() => 
    print('K: Hello, Jesús!');
}

/// Extend?: [Yes]
base class ExtendedK extends K {
  @override
  void greet() =>
    print('ExtendedK: Hello, Jesús!');
}

/// Implement?: [Yes]
base class ImplementedK implements K {
  @override
  void greet() =>
    print('ImplementedK: Hello, Blue Feather!');
}

/// Mixin?: [Yes]
base class MixinK with K {
  void run() => greet();
}

/// Exhaustive?: [No]
/// ```dart
/// switch (k) {
///   case K():
///   // ..
/// }
/// ```

/// 12. [abstract mixin class]
abstract mixin class L {
  /// Constructor?: [No]
  void greet() => 
    print('L: Hello, Jesús!');
}

/// Extend?: [Yes]
class ExtendedL extends L {
  @override
  void greet() =>
    print('ExtendedL: Hello, Jesús!');
}

/// Implement?: [Yes]
class ImplementedL implements L {
  @override
  void greet() =>
    print('ImplementedL: Hello, Blue Feather!');
}

/// Mixin?: [Yes]
class MixinL with L {
  void run() => greet();
}

/// Exhaustive?: [No]
/// ```dart
/// switch (l) {
///   case L():
///   // ..
/// }
/// ```

/// 13. [abstract base mixin class]
abstract base mixin class M {
  /// Constructor?: [No]
  void greet() => 
    print('M: Hello, Jesús!');
}

/// Extend?: [Yes]
base class ExtendedM extends M {
  @override
  void greet() =>
    print('ExtendedM: Hello, Jesús!');
}

/// Implement?: [Yes]
base class ImplementedM implements M {
  @override
  void greet() =>
    print('ImplementedM: Hello, Blue Feather!');
}

/// Mixin?: [Yes]
base class MixinM with M {
  void run() => greet();
}

/// Exhaustive?: [No]
/// ```dart
/// switch (m) {
///   case M():
///   // ..
/// }
/// ```

/// 14. [mixin]
mixin N {
  /// Constructor?: [No]
  String get name => 'Jesús';

  void greet() => 
    print('N: Hello, $name!');
}

/// Extend?: [No]
/// ```dart
/// class ExtendedN extends N {
///   @override
///   void greet() =>
///     print('ExtendedN: Hello, Jesús!');
/// }
/// ```

/// Implement?: [Yes]
class ImplementedN implements N {
  @override
  String get name => 'Blue Feather';

  @override
  void greet() =>
    print('ImplementedN: Hello, $name!');
}

/// Mixin?: [Yes]
class MixinN with N {
  void run() => greet();
}

/// Exhaustive?: [No]
/// ```dart
/// switch (n) {
///   case N():
///   // ..
/// }
/// ```

/// 15. [base mixin]
base mixin O {
  /// Constructor?: [No]
  String get name => 'Jesús';

  void greet() => 
    print('O: Hello, $name!');
}

/// Extend?: [No]
/// ```dart
/// base class ExtendedO extends O {
///   @override
///   void greet() =>
///     print('ExtendedO: Hello, Jesús!');
/// }
/// ```

/// Implement?: [Yes]
base class ImplementedO implements O {
  @override
  String get name => 'Blue Feather';

  @override
  void greet() =>
    print('ImplementedO: Hello, $name!');
}

/// Mixin?: [Yes]
base class MixinO with O {
  void run() => greet();
}

/// Exhaustive?: [No]
/// ```dart
/// switch (o) {
///   case O():
///   // ..
/// }
/// ```

void main() {
  /// 1. [class]
  A a = A('Jesús');
  a.greet();

  ExtendedA extendedA = ExtendedA('Jesús');
  extendedA.greet();

  ImplementedA implementedA = ImplementedA();
  implementedA.greet();

  /// 2. [base class]
  B b = B('Jesús');
  b.greet();

  ExtendedB extendedB = ExtendedB('Jesús');
  extendedB.greet();

  ImplementedB implementedB = ImplementedB();
  implementedB.greet();
  
  /// 3. [interface class]
  C c = C();
  c.greet();

  ExtendedC extendedC = ExtendedC();
  extendedC.greet();

  ImplementedC implementedC = ImplementedC();
  implementedC.greet();

  /// 4. [final class]
  D d = D('Jesús');
  d.greet();

  ExtendedD extendedD = ExtendedD('Jesús');
  extendedD.greet();

  ImplementedD implementedD = ImplementedD();
  implementedD.greet();

  /// 5. [sealed class]
  E e = ExtendedE();
  e.greet();

  ExtendedE extendedE = ExtendedE();
  extendedE.greet();

  ImplementedE implementedE = ImplementedE();
  implementedE.greet();

  E sealedE = ExtendedE();
  switch (sealedE) {
    case ExtendedE():
      print('It\'s ExtendedE');
      break;
    case ImplementedE():
      print('It\'s ImplementedE');
      break;
  }

  /// 6. [abstract class]
  F f = ExtendedF();
  f.greet();

  ExtendedF extendedF = ExtendedF();
  extendedF.greet();

  ImplementedF implementedF = ImplementedF();
  implementedF.greet();

  /// 7. [abstract base class]
  G g = ExtendedG();
  g.greet();

  ExtendedG extendedG = ExtendedG();
  extendedG.greet();

  ImplementedG implementedG = ImplementedG();
  implementedG.greet();

  /// 8. [abstract interface class]
  H h = ExtendedH();
  h.greet();

  ExtendedH extendedH = ExtendedH();
  extendedH.greet();

  ImplementedH implementedH = ImplementedH();
  implementedH.greet();

  /// 9. [abstract final class]
  I i = ExtendedI();
  i.greet();

  ExtendedI extendedI = ExtendedI();
  extendedI.greet();

  ImplementedI implementedI = ImplementedI();
  implementedI.greet();

  /// 10. [mixin class]
  J j = ExtendedJ();
  j.greet();

  ExtendedJ extendedJ = ExtendedJ();
  extendedJ.greet();

  ImplementedJ implementedJ = ImplementedJ();
  implementedJ.greet();

  MixinJ mixinJ = MixinJ();
  mixinJ.greet();

  /// 11. [base mixin class]
  K k = ExtendedK();
  k.greet();

  ExtendedK extendedK = ExtendedK();
  extendedK.greet();

  ImplementedK implementedK = ImplementedK();
  implementedK.greet();

  MixinK mixinK = MixinK();
  mixinK.greet();

  /// 12. [abstract mixin class]
  L l = ExtendedL();
  l.greet();

  ExtendedL extendedL = ExtendedL();
  extendedL.greet();

  ImplementedL implementedL = ImplementedL();
  implementedL.greet();

  MixinL mixinL = MixinL();
  mixinL.greet();

  /// 13. [abstract base mixin class]
  M m = ExtendedM();
  m.greet();

  ExtendedM extendedM = ExtendedM();
  extendedM.greet();

  ImplementedM implementedM = ImplementedM();
  implementedM.greet();

  MixinM mixinM = MixinM();
  mixinM.greet();

  /// 14. [mixin]
  N n = ImplementedN();
  n.greet();

  // ExtendedN extendedN = ExtendedN();
  // extendedN.greet();

  ImplementedN implementedN = ImplementedN();
  implementedN.greet();

  MixinN mixinN = MixinN();
  mixinN.greet();

  /// 15. [base mixin]
  O o = ImplementedO();
  o.greet();

  // ExtendedO extendedO = ExtendedO();
  // extendedO.greet();

  ImplementedO implementedO = ImplementedO();
  implementedO.greet();

  MixinO mixinO = MixinO();
  mixinO.greet();
}
