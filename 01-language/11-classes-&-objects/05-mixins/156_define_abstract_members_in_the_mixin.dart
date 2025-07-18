/// Dart Classes & Objects: Mixins

/// Declaring an abstract method in a mixin 
/// forces any type that uses the mixin 
/// to define the abstract method upon which its behavior depends.
mixin Musician {
  void playInstrument(String instrumentName); // Abstract method.

  void playPiano() {
    playInstrument('Piano');
  }

  void playFlute() {
    playInstrument('Flute');
  }
}

class Virtuoso with Musician {
  @override
  void playInstrument(String instrumentName) {  // Subclass must define.
    print('Plays the $instrumentName beautifully');
  }
}

void main() {
  var person = Virtuoso();
  person.playInstrument('Kalimba');  // Plays the Kalimba beautifully
  person.playPiano(); // Plays the Piano beautifully
  person.playFlute(); // Plays the Flute beautifully
}
