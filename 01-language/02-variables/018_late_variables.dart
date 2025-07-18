// Late Variables in Dart

// late variables are initialized 
// later than their declaration.
late String message;

// Lazy initialization
// - The variable might not be needed, 
// and initializing it is costly.
// - You're initializing an instance variable, 
// and its initializer needs access to [this].
late String temperature = readThermometer();
String readThermometer() {
  return 'This is a costly operation. It might not be needed.';
}

void main() {
  // The variable need not be initialized immediately.
  message = 'Hello, Dart!';
  print(message);

  // The variable is initialized when accessed,
  // but it might not be needed.
  // print(temperature);
}
