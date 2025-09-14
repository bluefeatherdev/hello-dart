/// Dart Keywords: [with]

/// In the Dart programming language, the `with` keyword has a very
/// specific and primary use: to apply mixins to a class.

/// 1. [The `with` Keyword for Mixins]:
mixin Walker {
  void walk() {
    print('I\'m walking');
  }
}

mixin Swimmer {
  void swim() {
    print('I\'m swimming');
  }
}

class Duck with Walker, Swimmer {
  void quack() {
    print('Quack!');
  }
}

/// 2. [Combining with `extends`]:
class Animal {
  void breathe() {
    print('Breathing...');
  }
}

mixin Flyer {
  void fly() {
    print('I\'m flying');
  }
}

class Owl extends Animal with Flyer {
  void hoot() {
    print('Hoot, hoot!');
  }
}

/// 3. [Mixin Constraints with `on`]:
class Performer {
  void perform() {
    print('Performing...');
  }
}

mixin Musical on Performer {
  void playMusic() {
    print('Playing a beautiful melody.');
    perform();
  }
}

class Musician extends Performer with Musical {
  void practice() {
    print('Practicing scales.');
  }
}

/// This would cause a compile-time error because
/// Dancer doesn't extend Performer:
/// ```dart
/// class Dancer with Musical {
///   void dance() {
///     print('Dancing gracefully.');
///   }
/// }
/// ```

void main() {
  /// 1. [The `with` Keyword for Mixins]:
  var duck = Duck();
  duck.quack(); // Quack!
  duck.walk(); // I'm walking
  duck.swim(); // I'm swimming

  /// 2. [Combining with `extends`]:
  var owl = Owl();
  owl.breathe(); // Breathing...
  owl.fly(); // I'm flying
  owl.hoot(); // Hoot, hoot!

  /// 3. [Mixin Constraints with `on`]:
  var musician = Musician();
  musician.playMusic();
  // Playing a beautiful melody.
  // Performing...
}
