/// Playground: [Infinite parameters]

/// Dart doesn’t support true variadic functions like Python’s `*args`, 
/// but it offers several flexible alternatives that achieve similar 
/// behavior. Here's a breakdown tailored to your modular style:

/// 1. [Optional Positional Parameters with `List`]:
void logAll([List<dynamic> args = const []]) {
  for (var arg in args) {
    print(arg); // ...
  }
}

/// 2. [Named Parameters with `Map`]:
void logNamed({Map<String, dynamic>? entries}) {
  entries?.forEach((key, value) => print('$key: $value'));
}

/// 3. [Using `noSuchMethod` for Dynamic Invocation (Advanced)]:
typedef OnCall = dynamic Function(List args);

class VarArgsFunction {
  final OnCall _onCall;
  VarArgsFunction(this._onCall);

  @override
  dynamic noSuchMethod(Invocation invocation) {
    if (!invocation.isMethod || invocation.namedArguments.isNotEmpty) {
      return super.noSuchMethod(invocation);
    }
    return _onCall(invocation.positionalArguments);
  }
}

void main() {
  /// 1. [Optional Positional Parameters with `List`]:
  logAll(['hello', 23, true]);

  /// 2. [Named Parameters with `Map`]:
  logNamed(entries: {'name': 'Jesús', 'score': 1623});

  /// 3. [Using `noSuchMethod` for Dynamic Invocation (Advanced)]:
  final dynamic shout = VarArgsFunction((args) {
    for (var word in args) {
      print('🔥 $word');
    }
  });
  shout('Dart', 'is', 'awesome');
}
