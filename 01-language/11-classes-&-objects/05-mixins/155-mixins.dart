/// Dart Classes & Objects: Mixins

/// Mixins are a way of defining code 
/// that can be reused in multiple class hierarchies. 
/// They are intended to provide member implementations en masse.


/// To define a mixin, use the `mixin` declaration. 
/// In the rare case where you need to define both a mixin and a class, 
/// you can use the `mixin class` declaration.

/// Mixins and mixin classes cannot have an extends clause, 
/// and must not declare any generative constructors.

/// A Musical mixin
mixin Musical {
  bool canPlayPiano = false;
  bool canCompose = false;
  bool canConduct = false;

  void entertainMe() {
    if (canPlayPiano) {
      print('Playing piano');
    } else if (canConduct) {
      print('Waving hands');
    } else {
      print('Humming to self');
    }
  }
}

/// An Aggressive mixin
mixin Aggressive {
  void intimidate() {
    print('Glaring intensely');
  }
}

/// A Demented mixin
mixin Demented {
  void rant() {
    print('Muttering incoherently');
  }
}

/// A performer class
class Performer {
  void perform() {
    print('Giving a performance');
  }
}

/// Musician is a subclass of Performer
/// and uses Musical mixin
class Musician extends Performer with Musical {
  Musician() {
    canPlayPiano = true;
  }
}

/// A person class
class Person {
  late String name;

  void introduce() {
    print('Hi, I am $name');
  }
}

/// Maestro is a subclass of Person,
/// and uses mixins such as Musical, Aggressive and Demented
class Maestro extends Person with Musical, Aggressive, Demented {
  Maestro(String maestroName) {
    name = maestroName;
    canConduct = true;
  }

  void orchestrate() {
    print('$name is orchestrating a masterpiece!');
  }
}

void main() {
  final john = Musician();
  john.entertainMe(); // Playing piano

  final matthew = Maestro('Matthew');
  matthew.introduce();  // Hi, I am Matthew
  matthew.entertainMe();  // Waving hands
  matthew.intimidate(); // Glaring intensely
  matthew.rant(); // Muttering incoherently
  matthew.orchestrate();  // Matthew is orchestrating a masterpiece!
}
