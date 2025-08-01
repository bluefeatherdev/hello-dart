/// Dart Null Safety: [Understanding null safety]

/// Dart's null aware operator `?.` is much older than null safety. 
/// The runtime semantics state that if the receiver is `null` then 
/// the property access on the right-hand side is skipped and 
/// the expression evaluates to `null`:

class Gizmo {
  final String name;
  Gizmo(this.name);
}

class Doohickey {
  final Gizmo gizmo;
  Doohickey(this.gizmo);
}

class Thing {
  final Doohickey? doohickey;
  Thing({this.doohickey});
}

void main() {
  /// Without null safety:
  /// ```dart
  /// String notAString = null;
  /// print(notAString?.length);
  /// ```
  
  /// Instead of throwing an exception, this prints "null". 
  /// The null-aware operator is a nice tool for making nullable types 
  /// usable in Dart. While we can't let you call methods on nullable 
  /// types, we can and do let you use null-aware operators on them. 
  /// The post-null safety version of the program is:
  
  // Using null safety:
  String? notAString2 = null;
  print(notAString2?.length);

  /// However, if you've ever used null-aware operators in Dart, 
  /// you've probably encountered an annoyance when using them in 
  /// method chains. Let's say you want to see if the length of a 
  /// potentially absent string is an even number (not a particularly 
  /// realistic problem, I know, but work with me here):
  
  /// Using null safety:
  /// ```dart
  /// String? notAString3 = null;
  /// print(notAString3?.length.isEven);
  /// ```

  /// Even though this program uses `?.`, it still throws an exception 
  /// at runtime. The problem is that the receiver of the `.isEven` 
  /// expression is the result of the entire `notAString?.length` 
  /// expression to its left. That expression evaluates to `null`, 
  /// so we get a null reference error trying to call `.isEven`. If 
  /// you've ever used `?.` in Dart, you probably learned the hard way 
  /// that you have to apply the null-aware operator to [every] property 
  /// or method in a chain after you use it once:
  /// 
  /// ```dart
  /// String? notAString4 = null;
  /// print(notAString4?.length?.isEven);
  /// ```

  /// This is annoying, but, worse, 
  /// it obscures important information.
  /// Consider:
  
  /// Using null safety:
  /// ```dart
  /// showGizmo(Thing? thing) {
  ///   print(thing?.doohickey?.gizmo);
  /// }
  /// ```
  
  /// To address this, we borrowed a smart idea from C#'s design of 
  /// the same feature. When you use a null-aware operator in a method 
  /// chain, if the receiver evaluates to `null`, then the entire rest 
  /// of the method chain is [short-circuited and skipped]. This means 
  /// if `doohickey` has a non-nullable return type, then you can and 
  /// should write:
  
  /// Using null safety:
  /// ```dart
  /// void showGizmo(Thing? thing) {
  ///   print(thing?.doohickey.gizmo);
  /// } 
  /// showGizmo(Thing());
  /// ```
  
  /// In fact, you'll get an unnecessary code warning on the second `?.` 
  /// if you don't. If you see code like:
  
  // Using null safety:
  void showGizmo(Thing? thing) {
    print(thing?.doohickey?.gizmo);
  } 
  showGizmo(Thing());

  /// While we were at it, 
  /// we added a couple of other null-aware operators:

  /// Using null safety:
  /// Null-aware cascade `?..`:
  /// `receiver?..method();`
  
  /// Null-aware index operator `?[]`:
  /// `receiver?[index];`
  
  /// There isn't a null-aware function call operator, 
  /// but you can write:
  
  /// Allowed with or without null safety:
  /// `function?.call(arg1, arg2);`
}

/// If a server application fails, you can often restart it 
/// before anyone notices. But when a Flutter app crashes on 
/// a user's phone, they are not happy. When your users aren't happy, 
/// you aren't happy.
