// Dart Functions: Functions

/// Dart determines the scope of variables based on the layout of its code. 
/// A programming language with this feature is termed a lexically scoped language. 
/// You can "follow the curly braces outwards" to see if a variable is in scope.

/// A series of nested functions with variables at each scope level:
bool topLevel = true;
void main() {  
  var insideMain = true;
  
  void myFunction() {
    var insideFunction = true;

    void nestedFunction() {
      var insideNestedFunction = true;

      print(topLevel);  // Prints: true
      print(insideMain);  // Prints: true
      print(insideFunction);  // Prints: true
      print(insideNestedFunction);  // Prints: true
    }
    nestedFunction();
  }
  myFunction();

  /// The `nestedFunction()` method can use variables from every level, 
  /// all the way up to the top level.
}
