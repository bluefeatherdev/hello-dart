// Dart Patterns: Overview & usage
// ignore_for_file: unnecessary_type_check

void main() {
  /// [Map] and [list] patterns work well for destructuring 
  /// key-value pairs in deserialized data, 
  /// such as data parsed from JSON:
  var data = {
    'user':['Lily', 13],
  };
  var {'user': [name, age]} = data;

  print(data);  // Prints: {user: [Lily, 13]}
  print(name);  // Prints: Lily
  print(age); // Prints: 13


  /// If you know that the JSON data has the structure you expect, 
  /// the previous example is realistic. But data typically comes from 
  /// an external source, like over the network. 
  /// You need to validate it first to confirm its structure.

  // Without patterns, validation is verbose:
  if (data is Map<String, Object?> &&
    data.length == 1 &&
    data.containsKey('user')) {
       var user = data['user'];
      if (user is List<Object> &&
        user.length == 2 &&
        user[0] is String &&
        user[1] is int) {
          var name = user[0] as String;
          var age = user[1] as int;
          print('User $name is $age years old.');
          // Prints: User Lily is 13 years old.
      }
  }

  /// A single [case pattern] can achieve the same validation. 
  /// Single cases work best as [if-case] statements. 
  /// Patterns provide a more declarative, 
  /// and much less verbose method of validating JSON:
  if (data case {'user': [String name, int age]}) {
    print('User $name is $age years old.');
    // Prints: User Lily is 13 years old.
  }
}
