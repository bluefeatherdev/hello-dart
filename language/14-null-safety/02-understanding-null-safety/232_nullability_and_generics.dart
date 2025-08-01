/// Dart Null Safety: [Understanding null safety]

/// Like most modern statically-typed languages, 
/// Dart has generic classes and generic methods. 
/// They interact with nullability in a few ways that seem 
/// counter-intuitive but make sense once you think through 
/// the implications. First is that "is this type nullable?" 
/// is no longer a simple yes or no question. Consider:

// Using null safety:
class Box<T> {
  final T object;
  Box(this.object);
}

/// In places where you don't have access to a value, 
/// you can make the use of the type parameter nullable:

// Using null safety:
class Box2<T> {
  T? object;
  Box2.empty();
  Box2.full(this.object);
}

/// Note the `?` on the declaration of `object`. 
/// Now the field has an explicitly nullable type, 
/// so it is fine to leave it uninitialized.

/// When you make a type parameter type nullable like `T?` here, 
/// you may need to cast the nullability away. The correct way 
/// to do that is using an explicit `as T` cast, [not] the `!` operator:

// Using null safety:
class Box3<T> {
  T? object;
  Box3.empty();
  Box3.full(this.object);

  T unbox() => object as T;

  /// This program should run without error. 
  /// Using `as T` accomplishes that. 
  /// Using `!` would throw an exception.
}

/// Other generic types have some bound that restricts 
/// the kinds of type arguments that can be applied:

// Using null safety:
class Interval<T extends num> {
  T min, max;

  Interval(this.min, this.max);

  bool get isEmpty => max <= min;
}

/// You can also use a nullable bound:

// Using null safety:
class Interval2<T extends num?> {
  T min, max;

  Interval2(this.min, this.max);

  bool get isEmpty {
    var localMin = min;
    var localMax = max;

    // No min or max means an open-ended interval.
    if (localMin == null || localMax == null) return false;
    return localMax <= localMin;
  }

  /// This means that in the body of the class you get the 
  /// flexibility of treating the type parameter as nullable, 
  /// but you also have the limitations of nullability. 
  /// You can't call anything on a variable of that type unless 
  /// you deal with the nullability first. In the example here, 
  /// we copy the fields in local variables and check those locals 
  /// for `null` so that flow analysis promotes them to non-nullable 
  /// types before we use `<=`.
}

void main() {
  Box<String>('a string');
  Box<int?>(null);

  var box = Box<int?>(null);
  print(box.object);

  var otherBox = Box<int?>(15);
  print(otherBox.object);

  var anotherBox = Box<int>(23);
  print(anotherBox.object);

  /// The `!` operator always throws if the value is `null`. 
  /// But if the type parameter has been instantiated with a 
  /// nullable type, then `null` is a perfectly valid value for `T`:
  var box2 = Box3<int?>.full(null);
  print(box2.unbox());

  var interval = Interval(1, 5);
  print(interval.isEmpty);  // false

  var otherInterval = Interval2(null, null);
  print(otherInterval.isEmpty);  // false

  var anotherInterval = Interval2(2, 3);
  print(anotherInterval.isEmpty);  // false
}

/// If a server application fails, you can often restart it 
/// before anyone notices. But when a Flutter app crashes on 
/// a user's phone, they are not happy. When your users aren't happy, 
/// you aren't happy.
