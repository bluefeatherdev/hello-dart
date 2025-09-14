/// Dart Keywords: [return]

/// The `return` keyword is used to exit a function and optionally send 
/// back a value to the caller. It’s fundamental to control flow and 
/// function output.

/// 1. [Returning a Value from a Function]:
int square(int x) {
  return x * x;
}

/// 2. [Returning Nothing (Void Functions)]:
void logMessage(String msg) {
  print('message: $msg');
  return; // Optional, but can be used for clarity
}

/// 3. [Early Exit from a Function]:
String greet(String? name) {
  if (name == null) return 'Hello, stranger!';
  return 'Hello, $name!';
}

/// 4. [Returning from Anonymous Functions or Closures]:
List<int> doubled = [1, 2, 3].map((x) {return x * 2;}).toList();

/// 5. [Returning from Arrow Functions (Implicit Return)]:
int triple(int x) => x * 3;

/// 6. [In async functions (`return await` for clarity)]:
Future<String> getDataFromServer() async {
  await Future.delayed(Duration(seconds: 2));
  return 'Data received from server';
}

Future<String> fetchData() async {
  return await getDataFromServer();
}

void main() async { 
  /// 1. [Returning a Value from a Function]:
  print(square(16));  // 256
  print(square(23));  // 529

  /// 2. [Returning Nothing (Void Functions)]:
  logMessage('I love you!');

  /// 3. [Early Exit from a Function]:
  print(greet(null));     // Hello, stranger!
  print(greet('Jesús'));  // Hello, Jesús!

  /// 4. [Returning from Anonymous Functions or Closures]:
  print(doubled); // [2, 4, 6]

  /// 5. [Returning from Arrow Functions (Implicit Return)]:
  print(triple(16));  // 48
  print(triple(23));  // 69

  /// 6. [In async functions (`return await` for clarity)]:
  print('Fetching data...');
  String result = await fetchData();
  print('Result: $result');
}
