// Types: Records in Dart
void main() {
  // Records are an anonymous, immutable, aggregate type
  var record1 = ('first', a: 2, b: true, 'last');

  (int, int) swap((int, int) record1) {
    var (a, b) = record1;
    return (b, a);
  }

  // Show results
  print(record1); // Output: (first, last, a: 2, b: true)
  print(swap((2, 3)));  // Output: (3, 2)

  // ----------------- //

  // Record type annotation in a variable declaration:
  (String, int) record2;

  // Initialize it with a record expression:
  record2 = ('A string', 123);

  // Show results
  print(record2); // Output: (A string, 123)

  // ----------------- //

  // Record type annotation in a variable declaration:
  ({int a, bool b}) record3;

  // Initialize it with a record expression:
  record3 = (a: 123, b: true);

  // Show results
  print(record3); // Output: (a: 123, b: true)

  // ----------------- //

  // Two records with named fields 
  // with different names have different types:
  ({int a, int b}) recordAB = (a: 1, b: 2);
  ({int x, int y}) recordXY = (x: 3, y: 4);

  // Compile error! These records don't have the same type.
  // recordAB = recordXY;

  // Show results
  print(recordAB); // Output: (a: 1, b: 2)
  print(recordXY); // Output: (x: 3, y: 4)

  // ----------------- //

  // Two records with named fields 
  // with different names have different types:
  (int c, int d) recordCD = (1, 2);
  (int w, int z) recordWZ = (3, 4);

  // Show results
  print(recordCD); // Output: (1, 2)
  print(recordWZ); // Output: (3, 4)

  recordCD = recordWZ; // OK

  // Show results
  print(recordCD); // Output: (3, 4)
  print(recordWZ); // Output: (3, 4)
}
