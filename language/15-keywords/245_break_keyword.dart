/// Dart Keywords: [break]

/// Use `break` to stop looping:
void breakExample1() {
  for (var i = 0; i < 10; i++) {
    if (i == 6) break;
    print('i: $i');
  }
}

void breakExample2(String command) {
  switch (command) {
    case 'dart':
      print('Initializing dart language...');
      break;
    case 'flutter':
      print('Initializing flutter sdk...');
      break;
    default:
      print('Command unknown');
  }
}

void main() {  
  breakExample1(); // ...
  breakExample2('dart'); // Initializing dart language...
}
