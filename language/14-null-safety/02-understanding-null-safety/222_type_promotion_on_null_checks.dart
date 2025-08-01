/// Dart Null Safety: [Understanding null safety]

/// If you check a local variable with nullable type to see 
/// if it is not `null`, Dart then promotes the variable to 
/// the underlying non-nullable type:

// Using null safety:
String makeCommand(String executable, [List<String>? arguments]) {
  var result = executable;
  if (arguments != null) {
    result += ' ' + arguments.join(' ');
  }
  return result;
}

/// It also, of course, works with the smarter analysis we do 
/// for reachability. The above function can be written just as well as:

// Using null safety:
String makeCommand2(String executable, [List<String>? arguments]) {
  var result = executable;
  if (arguments == null) return result;
  return result + ' ' + arguments.join(' ');
}

void main() {
  // Only the executable
  var command1 = makeCommand('flutter');
  print(command1); // Output: flutter

  // Executable with arguments
  var command2 = makeCommand('flutter', ['build', 'apk']);
  print(command2); // Output: flutter build apk

  // Executable with empty arguments
  var command3 = makeCommand('dart', []);
  print(command3); // Output: dart

  // ---

  // Only the executable
  var command4 = makeCommand2('flutter');
  print(command4); // Output: flutter

  // Executable with arguments
  var command5 = makeCommand2('flutter', ['build', 'apk']);
  print(command5); // Output: flutter build apk

  // Executable with empty arguments
  var command6 = makeCommand2('dart', []);
  print(command6); // Output: dart
}

/// If a server application fails, you can often restart it 
/// before anyone notices. But when a Flutter app crashes on 
/// a user's phone, they are not happy. When your users aren't happy, 
/// you aren't happy.
