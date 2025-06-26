// Dart Functions: Functions

/// Wrapping a set of function parameters in `[]` marks them as 
/// optional positional parameters. If you don't provide a default value, 
/// their types must be nullable as their default value will be `null`:
String say(String from, String msg, [String? device]) {
  var result = '$from says $msg';
  if (device != null) {
    result = '$result with a $device';
  }
  return result;
}

/// To define a default value for an optional positional parameter 
/// besides `null`, use `=` to specify a default value. The specified value 
/// must be a compile-time constant. For example:
String say2(String from, String msg, [String device = 'carrier pigeon']) {
  var result = '$from says $msg with a $device';
  return result;
}

void main() {  
  /// Here's an example of calling this function 
  /// without the optional parameter:
  print(say('Bob', 'Howdy')); 
  // Prints: 'Bob says Howdy'

  /// And here's an example of calling this function 
  /// with the third parameter:
  print(say('Bob', 'Howdy', 'smoke signal')); 
  // Prints: 'Bob says Howdy with a smoke signal' 

  /// To define a default value for an optional positional parameter 
  /// besides `null`, use `=` to specify a default value. The specified value 
  /// must be a compile-time constant. For example:
  print(say2('Bob', 'Howdy'));
  // Prints: 'Bob says Howdy with a carrier pigeon' 
}
