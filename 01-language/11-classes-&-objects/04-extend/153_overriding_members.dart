/// Dart Classes & Objects: Extend a class

/// Subclasses can override [instance methods] (including [operators]), 
/// [getters], and [setters]. You can use the `@override` annotation 
/// to indicate that you are intentionally overriding a member:
class Television {
  int _contrastLevel = 50;

  set contrast(int value) {
    print('Establishing contrast on television ...');
    if (value < 0 || value > 100) {
      print('Invalid value for contrast. It must be between 0 and 100.');
    } else {
      _contrastLevel = value;
      print('Contrast established at $_contrastLevel% on Television.');
    }
  }
}

class SmartTelevision extends Television {
  num _smartContrast = 50;
  
  @override
  set contrast(num value) {
    print('Establishing contrast on SmartTV...');
    if (value < 0 || value > 100) {
      print('Invalid value for contrast. It must be between 0 and 100.');
    } else {
      _smartContrast = value;
      print('Contrast established at $_smartContrast% on SmartTV.');
    }
  }
}

void main() {
  var tv = Television();
  tv.contrast = 70; // Valid
  tv.contrast = 120;  // Invalid

  print('');

  var smartTV = SmartTelevision();
  smartTV.contrast = 70;  // Valid
  smartTV.contrast = 120; // Invalid

  /// An overriding method declaration 
  /// must match the method (or methods) 
  /// that it overrides in several ways:

  /// - The return type must be the same type as (or a subtype of) 
  ///   the overridden method's return type.
  /// - Parameter types must be the same type as (or a supertype of) 
  ///   the overridden method's parameter types. 
  ///   In the preceding example, the `contrast` setter of `SmartTelevision` 
  ///   changes the parameter type from `int` to a supertype, `num`.
  /// - If the overridden method accepts n positional parameters, 
  ///   then the overriding method must also accept n positional parameters.
  /// - A [generic method] can't override a non-generic one, 
  ///   and a non-generic method can't override a generic one.
}
