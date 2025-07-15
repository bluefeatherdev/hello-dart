/// Dart Class Modifiers: Class modifiers for API maintainers

/// If the class has a non-factory constructor, 
/// an `extends` clause, or a `with` clause, 
/// then it already can't be used as a mixin. 
/// Behavior won't change with Dart 3.0; 
/// there's nothing to worry about and nothing you need to do.
class Animal {
  Animal(); // Constructor no factory
  void makeSound() => print('Generic sound');
}

class Cat extends Animal {
  @override
  void makeSound() => print('Meow');
}

// ERROR: Animal can't be used as a mixin
// class HousePet with Animal {}

/// If you need a class to be used as mixin, 
/// you must explicitly declare it as `Mixin Class`:
mixin class Behavior {
  void greet() => print('Hi');
}

class FriendlyPet with Behavior {}

void main() {
  Animal myAnimal = Animal();
  myAnimal.makeSound(); // Generic sound

  Cat myCat = Cat();
  myCat.makeSound();  // Meow

  FriendlyPet myFriendlyPet = FriendlyPet();
  myFriendlyPet.greet();  // Hi
}
