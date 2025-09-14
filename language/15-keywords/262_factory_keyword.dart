/// Dart Keywords: [factory]

/// Suppose we want a `User` class that allows only one instance 
/// per `username`. If an instance with that username already exists, 
/// it returns it; otherwise, it creates a new one.
class User {
  final String username;

  // Private cache to save unique instances
  static final Map<String, User> _cache = {};

  // Factory constructor
  factory User(String username) => 
    _cache.putIfAbsent(username, () => User._internal(username));

  // Private internal builder
  User._internal(this.username);

  @override
  String toString() => 'User($username)';
}

void main() { 
  var user1 = User('John');
  var user2 = User('John');
  var user3 = User('Cortana');

  print(user1); // User(John)
  print(user2); // User(John)
  print(user3); // User(Cortana)

  print(user1 == user2);  // true
  print(user1 == user3);  // false
  print(user2 == user1);  // true
  print(user2 == user3);  // false
}
