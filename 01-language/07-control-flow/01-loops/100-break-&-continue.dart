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
  /// Use `break` to stop looping:
  /// ```dart
  /// while (true) {
  ///   if (shutDownRequested()) break;
  ///   processIncomingRequests();
  /// }
  /// ```
  
  /// Use `continue` to skip to the next loop iteration:
  var candidates = [
    Candidate('John Doe', 5),
    Candidate('Clair Summer', 2),
    Candidate('Mery Snow', 5),
  ];
  for (int i = 0; i < candidates.length; i++) {
    var candidate = candidates[i];
    if (candidate.yearsExperience < 5) {
      continue;
    }
    candidate.interview();
  }

  /// If you're using an [Iterable] such as a list or set, 
  /// how you write the previous example might differ:
  candidates
    .where((c) => c.yearsExperience >= 5)
    .forEach((c) => c.interview());
}
