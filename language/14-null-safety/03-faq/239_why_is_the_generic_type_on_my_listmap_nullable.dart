/// Dart Null Safety: [Frequently asked questions]

/// Why is the generic type on my List/Map nullable?:
/// It is typically a code smell to end up with nullable code like this:
/// `List<Foo?> fooList;` // fooList can contain null values

/// This implies `fooList` might contain null values. 
/// This might happen if you are initializing the list 
/// with length and filling it in via a loop.

const int jellyMax = 5;

late List<int> _jellyCounts;
late List<Vec2D> _jellyPoints;

class Vec2D {
  final double x;
  final double y;

  Vec2D({this.x = 0.0, this.y = 0.0});

  @override
  String toString() => 'Vec2D(x: $x, y: $y)';
}

void main() {  
  /// If you are simply initializing the list with the same value, 
  /// you should instead use the `filled` constructor.
  /// 
  /// bad:
  /// ```dart
  /// _jellyCounts = List<int?>(jellyMax + 1);
  /// for (var i = 0; i <= jellyMax; i++) {
  ///   _jellyCounts = 0; // List initialized with the same value
  /// }
  /// ```
  /// 
  /// good:
  _jellyCounts = List<int>.filled(jellyMax + 1, 0); // List initialized with filled constructor

  /// If you are setting the elements of the list via an index, 
  /// or you are populating each element of the list with a distinct value, 
  /// you should instead use the list literal syntax to build the list.
  /// 
  /// bad:
  /// ```dart
  /// _jellyPoints = List<Vec2D?>(jellyMax + 1);
  /// for (var i = 0; i <= jellyMax; i++) {
  ///   _jellyPoints[i] = Vec2D();  // Each list element is a distinct Vec2D
  /// }
  /// ```
  /// 
  /// good:
  _jellyPoints = [
    for (var i = 0; i <= jellyMax; i++)
      Vec2D() // Each list element is a distinct Vec2D
  ];

  /// To generate a fixed-length list, use the `List.generate` constructor 
  /// with the `growable` parameter set to `false`:
  var jellyPoints2 = List.generate(jellyMax, (_) => Vec2D(), growable: false);
  
  print('Jelly Counts: $_jellyCounts');
  print('Jelly Points: $_jellyPoints');
  print('Jelly Points 2: $jellyPoints2');
}
