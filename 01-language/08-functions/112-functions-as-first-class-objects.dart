/// Dart Functions

/// You can pass a function as a parameter to another function. 
/// For example:
void printElement(int element) {
  print(element);
}

void main() {  
  // Pass printElement as a parameter.
  var list = [1, 2, 3];
  list.forEach(printElement);

  // You can also assign a function to a variable, such as:
  var loudify = (msg) => '!!! ${msg.toUpperCase()} !!!';
  print(loudify('hello'));
  // Prints: '!!! HELLO !!!'

  /// This example uses an [anonymous function].
  /// More about those in the next section.
}
