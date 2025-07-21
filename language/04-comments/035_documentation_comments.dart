// Comments in Dart

/// A domesticated South American camelid (Lama glama)
/// 
/// Andean cultures have used llamas as meat and pack
/// animals since pre-Hispanic times.
/// 
/// Just like any other animal, llamas need to eat,
/// so don't forget to [feed] them some [Food]
class Llama {
  String? name;

  /// Feeds your llama [food].
  ///
  /// The typical llama eats one bale of hay per week.
  void feed(Food food) {
    // ...
  }

  /// Exercises your llama with an [activity] for
  /// [timeLimit] minutes.
  void exercise(Activity activity, int timeLimit) {
    // ....
  }
}

class Food {
  // ...
}

class Activity {
  // ...
}

void main() { 
  print('Hello, Dart!');
}
