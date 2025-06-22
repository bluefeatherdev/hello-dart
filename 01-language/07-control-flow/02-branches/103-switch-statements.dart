// Dart Control flow: Branches

/// [Enums] and [sealed types] are particularly useful for switches because, 
/// even without a default case, their possible values are known and fully enumerable. 
/// Use the [sealed modifier] on a class to enable exhaustiveness checking 
/// when switching over subtypes of that class:
import 'dart:math' as math;
sealed class Shape {}

class Square implements Shape {
  final double length;
  Square(this.length);
}

class Circle implements Shape {
  final double radius;
  Circle(this.radius);
}

double calculateArea(Shape shape) => switch (shape) {
  Square(length: var l) => l * l,
  Circle(radius: var r) => math.pi * r * r,
};

void main() {
  /// A `switch` statement evaluates a value expression against a series of cases. 
  /// Each `case` clause is a [pattern] for the value to match against. 
  /// You can use [any kind of pattern] for a case.
  
  /// When the value matches a case's pattern, the case body executes. 
  /// Non-empty `case` clauses jump to the end of the switch after completion. 
  /// They do not require a `break` statement. Other valid ways to end a 
  /// non-empty `case` clause are a `continue`, `throw`, or `return` statement.
  
  /// Use a `default` or wildcard `_` clause to execute code 
  /// when no case clause matches:
  var command = 'OPEN';
  switch (command) {
    case 'CLOSED':
      // executeClosed();
    case 'PENDING':
      // executePending();
    case 'APPROVED':
      // executeApproved();
    case 'DENIED':
      // executeDenied();
    case 'OPEN':
      // executeOpen();
      print('executing Open...');
    default:
      // executeUnknown();
  }

  /// Empty cases fall through to the next case, allowing cases to share a body. 
  /// For an empty case that does not fall through, use `break` for its body. 
  /// For non-sequential fall-through, you can use a `continue` statement and a label:
  switch (command) {
    case 'OPEN':
      // executeOpen();
      continue newCase; // Continues executing at the newCase label.
    
    case 'DENIED': // Empty case falls through.
    case 'CLOSED':
      // executeClose();  // Runs for both DENIED and CLOSED,

    newCase:
    case 'PENDING':
      // executeNowClose(); // Runs for both OPEN and PENDING.
  }

  /// A [switch expression] produces a value based on the expression body 
  /// of whichever case matches. You can use a switch expression wherever 
  /// Dart allows [expressions], [except] at the start of an expression statement. 
  /// For example:
  /// ```dart
  /// var x = switch (y) {...};
  /// print(switch (x) {...});
  /// return switch (x) {...};
  /// ```
  
  /// Switch expressions allow you to rewrite a switch [statement] like this:
  /// ```dart
  /// switch (charCode) {
  ///   case slash || star || plus || minus:  // Logical-or pattern
  ///     token = operator(charCode);
  ///   case comma || semicolon:  // Logical.or pattern
  ///     token = punctuation(charCode);
  ///   case >= digit0 && <= digit9: // Relational and logical-and patterns
  ///     token = number();
  ///   default:
  ///     throw FormatException('Invalid');
  /// }
  /// ```
  
  /// Into an [expression], like this:
  /// ```dart
  /// token = switch(charCode) {
  ///   slash || star || plus || minus => operator(charCode),
  ///   comma || semicolon => punctuation(charCode),
  ///   >= digit0 && <= digit9 => number(),
  ///   _ => throw FormatException('Invalid'),
  /// };
  /// ```
  
  /// The syntax of a [switch expression] differs from [switch statement] syntax:
  /// - Cases do not start with the `case` keyword.
  /// - A case body is a single expression instead of a series of statements.
  /// - Each case must have a body; there is no implicit fallthrough for empty cases.
  /// - Case patterns are separated from their bodies using `=>` instead of `:`.
  /// - Cases are separated by `,` (and an optional trailing `,` is allowed).
  /// - Default cases can only use `_`, instead of allowing both `default` and `_`.
  
  /// Exhaustiveness checking is a feature that reports a compile-time error 
  /// if it's possible for a value to enter a switch but not match any of the cases.
  // Non-exhaustive switch on bool?, missing case to match null possibility:
  bool? nullableBool = null;
  switch (nullableBool) {
    case true:
      print('yes');
    case false:
      print('no');
    default:
      print('null accepted');
  }

  /// A default case (`default` or `_`) covers all possible values that can 
  /// flow through a switch. This makes a switch on any type exhaustive.
  
  /// To set an optional guard clause after a `case` clause, use the keyword `when`.
  ///  A guard clause can follow `if case`, and both `switch` statements and expressions.
  /// ```dart
  /// Switch statement:
  /// switch (something) {
  ///   case somePattern when some || boolean || expression:
  ///     //              ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ Guard clause.
  ///     body;
  /// }
  /// 
  /// Switch expression:
  /// var value = switch (something) {
  ///   somePattern when some || boolean || expression => body,
  ///     //             ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ Guard clause.
  /// }
  /// 
  /// If-case statement:
  /// if (something case somePattern when some || boolean || expression) {
  ///   //                           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ Guard clause.
  ///   body;
  /// }
  /// ```
}
