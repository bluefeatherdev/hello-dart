// Dart Control flow: Loops

// Candidate class:
class Candidate {
  // Candidate attributes:
  final String name;
  final int yearsExperience;

  // Candidate constructor:
  Candidate(this.name, this.yearsExperience);

  // Candidate methods:
  void interview() {
    print('Interviewing $name...');
  }
}
void main() {
  /// You can iterate with the standard `for` loop. For example:
  var message = StringBuffer('Dart is fun');
  for (var i = 0; i < 5; i++) {
    message.write('!');
  }
  print(message); // Prints: Dart is fun!!!!!

  /// Closures inside of Dart's for loops capture the [value] of the index. 
  /// This avoids a common pitfall found in JavaScript. 
  /// For example, consider:
  var callbacks = [];
  for (var i = 0; i < 2; i++) {
    callbacks.add(() => print(i));
  }

  for (final c in callbacks) {
    c();  // The output is 0 and then 1, as expected. 
  }

  /// Sometimes you might not need to know the current iteration counter 
  /// when iterating over an [Iterable] type, like `List` or `Set`. 
  /// In that case, use the `for-in` loop for cleaner code:
  var candidates = [
    Candidate('John Doe', 5),
    Candidate('Clair Summer', 2),
    Candidate('Mery Snow', 4),
  ];
  for (var candidate in candidates) {
    candidate.interview();
  }

  /// To process the values obtained from the iterable, 
  /// you can also use a [pattern] in a `for-in` loop:
  for (final Candidate(:name, :yearsExperience) in candidates) {
    print('$name has $yearsExperience of experience.');
  }

  /// Iterable classes also have a `forEach()` method as another option:
  var collection = [1, 2, 3];
  collection.forEach(print);  // Prints 1 2 3 respectively
}
