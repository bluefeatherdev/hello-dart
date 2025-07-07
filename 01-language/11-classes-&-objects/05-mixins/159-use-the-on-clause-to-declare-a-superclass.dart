/// Dart Classes & Objects: Mixins

/// The `on` clause exists to define the type 
/// that `super` calls are resolved against. 
/// So, you should only use it 
/// if you need to have a `super` call inside a mixin.

/// The `on` clause forces any class that uses a mixin 
/// to also be a subclass of the type in the `on` clause. 
/// If the mixin depends on members in the superclass, 
/// this ensures those members are available 
/// where the mixin is used:
class Musician {
  musicianMethod() {
    print('Playing music!');
  }
}

mixin MusicalPerformer on Musician {
  performerMethod() {
    print('Performing music!');
    super.musicianMethod();
  }
}

class SignerDancer extends Musician with MusicalPerformer {}

/// In this example, only classes that extend or implement 
/// the `Musician` class can use the mixin `MusicalPerformer`. 
/// Because `SingerDancer` extends `Musician`, 
/// `SingerDancer` can mix in `MusicalPerformer`.

void main() {
  SignerDancer().performerMethod();
  // Prints: Performing music!
  // Prints: Playing music!
}
