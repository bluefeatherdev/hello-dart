/// Dart Classes & Objects: Constructors

/// A redirecting factory constructor specifies 
/// a call to a constructor of another class to use 
/// whenever someone makes a call to the redirecting constructor.
/// `factory Listenable.merge(List<Listenable> listenables) = _MergingListenable`

/// A redirecting factory constructor avoids the need for 
/// forwarders to repeat the formal parameters and their default values.
abstract class Listenable {
  void listen();

  /// A redirecting factory constructor:
  factory Listenable.merge(List<Listenable> listenables) = _MergingListenable;
}

// Private implementation: combines multiple Listenables
class _MergingListenable implements Listenable {
  final List<Listenable> _listenables;

  _MergingListenable(this._listenables);

  @override
  void listen() {
    for (var l in _listenables) {
      l.listen();
    }
  }
}

// Simple implementations
class PrintListenable implements Listenable {
  final String name;

  PrintListenable(this.name);

  @override
  void listen() {
    print('Escuchando: $name');
  }
}

void main() {
  var a = PrintListenable('Micrófono A');
  var b = PrintListenable('Micrófono B');
  
  /// A redirecting factory constructor:
  var merged = Listenable.merge([a, b]);
  merged.listen();
}

