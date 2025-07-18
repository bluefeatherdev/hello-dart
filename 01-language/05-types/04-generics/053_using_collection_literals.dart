// Dart Types: Generics
void main() {
  /// List, set, and map literals can be parameterized:
  var names = <String>['Seth', 'Kathy', 'Lars'];
  var uniqueNames = <String>{'Seth', 'Kathy', 'Lars'};
  var pages= <String, String> {
    'index.html': 'Homepage',
    'robots.txt': 'Hints for web robots',
    'humans.txt': 'We are people, not machines',
  };

  // Show results
  print(names); // Prints: [Seth, Kathy, Lars]
  print(uniqueNames); // Prints: {Seth, Kathy, Lars}
  print(pages); // Prints: {index.html: Homepage, robots.txt: Hints for web robots, humans.txt: We are people, not machines}
}
