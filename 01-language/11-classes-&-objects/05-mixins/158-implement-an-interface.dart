/// Dart Classes & Objects: Mixins

/// Similar to declaring the mixin abstract, 
/// putting an `implements` clause on the mixin 
/// while not actually implementing the interface 
/// will also ensure any member dependencies 
/// are defined for the mixin.
abstract interface class Tuner {
  void tuneInstrument();
}

mixin Guitarist implements Tuner {
  void playSong() {
    tuneInstrument();

    print('Strums guitar majestically.');
  }
}

class PunkRocker with Guitarist {
  @override
  void tuneInstrument() {
    print("Don't bother, being out of tune is punk rock.");
  }
}

void main() {
  var person = PunkRocker();
  person.tuneInstrument();  // @override
  person.playSong();  // @override & Strums guitar majestically.
}
