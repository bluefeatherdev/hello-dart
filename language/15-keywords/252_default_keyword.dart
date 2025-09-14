/// Dart Keywords: [default]

/// The `default` keyword has a very specific use 
/// and is applied exclusively in the context of Switch sentences, 
/// where it acts as a backup clause when no other case coincides.
void defaultExample1(String command) {
  switch (command) {
    case 'dart':
      print('Initializing dart language');
      break;
    case 'flutter':
      print('Initializing flutter sdk');
      break;
    default:
      print('Command unknown');
  }
}

void defaultExample2(int charCode) {
  var token = switch (charCode) {
    47 => 'slash', /// `/`
    42 => 'star', /// `*`
    _ => 'unknown', /// wildcard as `default`
  };
  print('Token: $token');
}

void main() { 
  defaultExample1('dart');  // Initializing dart language...
  defaultExample1('flutter');  // Initializing flutter sdk...
  defaultExample1('firebase');  // Command unknown

  defaultExample2(47);  // Token: slash
  defaultExample2(42);  // Token: star
  defaultExample2(46);  // Token: unknown
}
