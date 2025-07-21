/// Dart Class Modifiers: Reference

/// The valid combinations of class modifiers 
/// and their resulting capabilities are:

import '198_valid_combinations.dart';

/// 1. [class]

/// Extend?: [Yes]
class OutsideExtendedA extends A {
  OutsideExtendedA(String name) : super(name);

  @override
  void greet() =>
    print('OutsideExtendedA: Hello, $name!');
}

/// Implement?: [Yes]
class OutsideImplementedA implements A {
  @override
  String get name => 'Blue Feather';

  @override
  void greet() =>
    print('OutsideImplementedA: Hello, $name!');
}

/// Mixin?: [No]
/// `mixin OutsideMixinA on A {}`

/// Exhaustive?: [No]
/// ```dart
/// switch (a) {
///   case A():
///   // ..
/// }
/// ```

/// 2. [base class]

/// Extend?: [Yes]
base class OutsideExtendedB extends B {
  OutsideExtendedB(String name) : super(name);

  @override
  void greet() =>
    print('OutsideExtendedB: Hello, $name!');
}

/// Implement?: [Not outside]
/// ```dart
/// base class OutsideImplementedB implements B {
///   @override
///   String get name => 'Blue Feather';
///
///   @override
///   void greet() =>
///     print('OutsideImplementedB: Hello, $name!');
/// }
/// ```

/// Mixin?: [No]
/// `mixin OutsideMixinB on B {}`

/// Exhaustive?: [No]
/// ```dart
/// switch (b) {
///   case B():
///   // ..
/// }
/// ```

/// 3. [interface class]

/// Extend?: [NOT OUTSIDE]
/// ```dart
/// class OutsideExtendedC extends C {
///   @override
///   String get name =>
///     'Blue Feather';
///
///   @override
///   void greet() => 
///     print('OutsideExtendedC: Hello, $name!');
/// }
/// ```

/// Implement?: [Yes]
class OutsideImplementedC implements C {
  @override
  String get name => 'Blue Feather';

  @override
  void greet() =>
    print('OutsideImplementedC: Hello, $name!');
}

/// Mixin?: [No]
/// `mixin OutsideMixinC on C {}`

/// Exhaustive?: [No]
/// ```dart
/// switch (c) {
///   case C():
///   // ..
/// }
/// ```

/// 4. [final class]

/// Extend?: [Not outside]
/// ```dart
/// final class OutsideExtendedD extends D {
///   OutsideExtendedD(String name) : super(name);
///
///   @override
///   void greet() =>
///     print('OutsideExtendedD: Hello, $name!');
/// }
/// ```

/// Implement?: [Not outside]
/// ```dart
/// final class OutsideImplementedD implements D {
///   @override
///   String get name => 'Blue Feather';
/// 
///   @override
///   void greet() =>
///     print('OutsideImplementedD: Hello, $name!');
/// }
/// ```

/// Mixin?: [No]
/// `mixin OutsideMixinD on D {}`

/// Exhaustive?: [No]
/// ```dart
/// switch (d) {
///   case D():
///   // ..
/// }
/// ```

/// 5. [sealed class]

/// Extend?: [Not outside]
/// ```dart
/// final class OutsideExtendedE extends E {
///   @override
///   void greet() =>
///     print('OutsideExtendedE: Hello, Blue Feather!');
/// }
/// ```

/// Implement?: [Not outside]
/// ```dart
/// final class OutsideImplementedE implements E {
///   @override
///   void greet() =>
///     print('OutsideImplementedE: Hello, Blue Feather!');
/// }
/// ```

/// Mixin?: [No]
/// `mixin OutsideMixinE on E {}`

/// Exhaustive?: [Not outside]
/// Look at `main()`

/// 6. [abstract class]

/// Extend?: [Yes]
class OutsideExtendedF extends F {
  OutsideExtendedF();

  @override
  String get name => 'Jesús';

  @override
  void greet() =>
    print('OutsideExtendedF: Hello, $name!');
}

/// Implement?: [Yes]
class OutsideImplementedF implements F {
  @override
  String get name => 'Blue Feather';

  @override
  void greet() =>
    print('OutsideImplementedF: Hello, $name!');
}

/// Mixin?: [No]
/// `mixin OutsideMixinF on F {}`

/// Exhaustive?: [No]
/// ```dart
/// switch (f) {
///   case F():
///   // ..
/// }
/// ```

/// 7. [abstract base class]

/// Extend?: [Yes]
base class OutsideExtendedG extends G {
  OutsideExtendedG();

  @override
  String get name => 'Jesús';

  @override
  void greet() =>
    print('OutsideExtendedG: Hello, $name!');
}

/// Implement?: [Not outside]
/// ```dart
/// base class OutsideImplementedG implements G {
///   @override
///   String get name => 'Blue Feather';
/// 
///   @override
///   void greet() =>
///     print('OutsideImplementedG: Hello, $name!');
/// }
/// ```

/// Mixin?: [No]
/// `mixin OutsideMixinG on G {}`

/// Exhaustive?: [No]
/// ```dart
/// switch (g) {
///   case G():
///   // ..
/// }
/// ```

/// 8. [abstract interface class]

/// Extend?: [Not outside]
/// ```dart
/// class OutsideExtendedH extends H {
///   @override
///   String get name => 'Jesús';
/// 
///   @override
///   void greet() =>
///     print('OutsideExtendedH: Hello, $name!');
/// }
/// ```

/// Implement?: [Yes]
class OutsideImplementedH implements H {
  @override
  String get name => 'Blue Feather';

  @override
  void greet() =>
    print('OutsideImplementedH: Hello, $name!');
}

/// Mixin?: [No]
/// `mixin OutsideMixinH on H {}`

/// Exhaustive?: [No]
/// ```dart
/// switch (h) {
///   case H():
///   // ..
/// }
/// ```

/// 9. [abstract final class]

/// Extend?: [No outside]
/// ```dart
/// final class OutsideExtendedI extends I {
///   @override
///   String get name => 'Jesús';
/// 
///   @override
///   void greet() =>
///     print('OutsideExtendedI: Hello, $name!');
/// }
/// ```

/// Implement?: [Not outside]
/// ```dart
/// final class OutsideImplementedI implements I {
///   @override
///   String get name => 'Blue Feather';
/// 
///   @override
///   void greet() =>
///     print('OutsideImplementedI: Hello, $name!');
/// }
/// ```

/// Mixin?: [No]
/// `mixin OutsideMixinI on I {}`

/// Exhaustive?: [No]
/// ```dart
/// switch (i) {
///   case I():
///   // ..
/// }
/// ```

/// 10. [mixin class]

/// Extend?: [Yes]
class OutsideExtendedJ extends J {
  @override
  void greet() =>
    print('OutsideExtendedJ: Hello, Jesús!');
}

/// Implement?: [Yes]
class OutsideImplementedJ implements J {
  @override
  void greet() =>
    print('OutsideImplementedJ: Hello, Blue Feather!');
}

/// Mixin?: [Yes]
class OutsideMixinJ with J {
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

/// Extend?: [Yes]
base class OutsideExtendedK extends K {
  @override
  void greet() =>
    print('OutsideExtendedK: Hello, Jesús!');
}

/// Implement?: [Not outside]
/// ```dart
/// base class OutsideImplementedK implements K {
///   @override
///   void greet() =>
///     print('OutsideImplementedK: Hello, Blue Feather!');
/// }
/// ```

/// Mixin?: [Yes]
base class OutsideMixinK with K {
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

/// Extend?: [Yes]
class OutsideExtendedL extends L {
  @override
  void greet() =>
    print('OutsideExtendedL: Hello, Jesús!');
}

/// Implement?: [Yes]
class OutsideImplementedL implements L {
  @override
  void greet() =>
    print('OutsideImplementedL: Hello, Blue Feather!');
}

/// Mixin?: [Yes]
class OutsideMixinL with L {
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

/// Extend?: [Yes]
base class OutsideExtendedM extends M {
  @override
  void greet() =>
    print('OutsideExtendedM: Hello, Jesús!');
}

/// Implement?: [Not outside]
/// ```dart
/// base class ImplementedM implements M {
///   @override
///   void greet() =>
///     print('ImplementedM: Hello, Blue Feather!');
/// }
/// ```

/// Mixin?: [Yes]
base class OutsideMixinM with M {
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

/// Extend?: [No]
/// ```dart
/// class OutsideExtendedN extends N {
///   @override
///   void greet() =>
///     print('OutsideExtendedN: Hello, Jesús!');
/// }
/// ```

/// Implement?: [Yes]
class OutsideImplementedN implements N {
  @override
  String get name => 'Blue Feather';

  @override
  void greet() =>
    print('OutsideImplementedN: Hello, $name!');
}

/// Mixin?: [Yes]
class OutsideMixinN with N {
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

/// Extend?: [No]
/// ```dart
/// base class OutsideExtendedO extends O {
///   @override
///   void greet() =>
///     print('OutsideExtendedO: Hello, Jesús!');
/// }
/// ```

/// Implement?: [Not outside]
/// ```dart
/// base class OutsideImplementedO implements O {
///   @override
///   String get name => 'Blue Feather';
/// 
///   @override
///   void greet() =>
///     print('OutsideImplementedO: Hello, $name!');
/// }
/// ```

/// Mixin?: [Yes]
base class OutsideMixinO with O {
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

  OutsideExtendedA outsideExtendedA = OutsideExtendedA('Jesús');
  outsideExtendedA.greet();

  OutsideImplementedA outsideImplementedA = OutsideImplementedA();
  outsideImplementedA.greet();

  /// 2. [base class]
  B b = B('Jesús');
  b.greet();

  OutsideExtendedB outsideExtendedB = OutsideExtendedB('Jesús');
  outsideExtendedB.greet();

  // OutsideImplementedB outsideImplementedB = OutsideImplementedB();
  // outsideImplementedB.greet();

  /// 3. [interface class]
  C c = C();
  c.greet();

  // OutsideExtendedC outsideExtendedC = OutsideExtendedC();
  // outsideExtendedC.greet();

  OutsideImplementedC outsideImplementedC = OutsideImplementedC();
  outsideImplementedC.greet();

  /// 4. [final class]
  D d = D('Jesús');
  d.greet();

  // OutsideExtendedD outsideExtendedD = OutsideExtendedD();
  // outsideExtendedD.greet();

  // OutsideImplementedD outsideImplementedD = OutsideImplementedD();
  // outsideImplementedD.greet();

  /// 5. [sealed class]
  E e = ExtendedE();
  e.greet();

  // OutsideExtendedE outsideExtendedE = OutsideExtendedE();
  // outsideExtendedE.greet();

  // OutsideImplementedE outsideImplementedE = OutsideImplementedE();
  // outsideImplementedE.greet();

  // E sealedE = OutsideExtendedE();
  // switch (sealedE) {
  //   case OutsideExtendedE():
  //     print('It\'s OutsideExtendedE');
  //     break;
  //   case OutsideImplementedE():
  //     print('It\'s ImplementedE');
  //     break;
  // }

  /// 6. [abstract class]
  F f = OutsideExtendedF();
  f.greet();

  OutsideExtendedF outsideExtendedF = OutsideExtendedF();
  outsideExtendedF.greet();

  OutsideImplementedF outsideImplementedF = OutsideImplementedF();
  outsideImplementedF.greet();

  /// 7. [abstract base class]
  G g = OutsideExtendedG();
  g.greet();

  OutsideExtendedG outsideExtendedG = OutsideExtendedG();
  outsideExtendedG.greet();

  // OutsideImplementedG outsideImplementedG = OutsideImplementedG();
  // outsideImplementedG.greet();

  /// 8. [abstract interface class]
  H h = OutsideImplementedH();
  h.greet();

  // OutsideExtendedH outsideExtendedH = OutsideExtendedH();
  // outsideExtendedH.greet();

  OutsideImplementedH outsideImplementedH = OutsideImplementedH();
  outsideImplementedH.greet();

  /// 9. [abstract final class]
  I i = ExtendedI();
  i.greet();

  // OutsideExtendedI outsideExtendedI = OutsideExtendedI();
  // outsideExtendedI.greet();

  // OutsideImplementedI outsideImplementedI = OutsideImplementedI();
  // outsideImplementedI.greet();

  /// 10. [mixin class]
  J j = OutsideExtendedJ();
  j.greet();

  OutsideExtendedJ outsideExtendedJ = OutsideExtendedJ();
  outsideExtendedJ.greet();

  OutsideImplementedJ outsideImplementedJ = OutsideImplementedJ();
  outsideImplementedJ.greet();

  OutsideMixinJ outsideMixinJ = OutsideMixinJ();
  outsideMixinJ.greet();

  /// 11. [base mixin class]
  K k = OutsideExtendedK();
  k.greet();

  OutsideExtendedK outsideExtendedK = OutsideExtendedK();
  outsideExtendedK.greet();

  // OutsideImplementedK outsideImplementedK = OutsideImplementedK();
  // outsideImplementedK.greet();

  OutsideMixinK outsideMixinK = OutsideMixinK();
  outsideMixinK.greet();

  /// 12. [abstract mixin class]
  L l = OutsideExtendedL();
  l.greet();

  OutsideExtendedL outsideExtendedL = OutsideExtendedL();
  outsideExtendedL.greet();

  OutsideImplementedL outsideImplementedL = OutsideImplementedL();
  outsideImplementedL.greet();

  OutsideMixinL outsideMixinL = OutsideMixinL();
  outsideMixinL.greet();

  /// 13. [abstract base mixin class]
  M m = OutsideExtendedM();
  m.greet();

  OutsideExtendedM outsideExtendedM = OutsideExtendedM();
  outsideExtendedM.greet();

  // OutsideImplementedM outsideImplementedM = OutsideImplementedM();
  // outsideImplementedM.greet();

  OutsideMixinM outsideMixinM = OutsideMixinM();
  outsideMixinM.greet();

  /// 14. [mixin]
  N n = OutsideImplementedN();
  n.greet();

  // OutsideExtendedN outsideExtendedN = OutsideExtendedN();
  // outsideExtendedN.greet();

  OutsideImplementedN outsideImplementedN = OutsideImplementedN();
  outsideImplementedN.greet();

  OutsideMixinN outsideMixinN = OutsideMixinN();
  outsideMixinN.greet();

  /// 15. [base mixin]
  O o = OutsideMixinO();
  o.greet();

  // OutsideExtendedO outsideExtendedO = OutsideExtendedO();
  // outsideExtendedO.greet();

  // OutsideImplementedO outsideImplementedO = OutsideImplementedO();
  // outsideImplementedO.greet();

  OutsideMixinO outsideMixinO = OutsideMixinO();
  outsideMixinO.greet();
}
