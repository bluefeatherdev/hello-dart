// Types: Records in Dart
void main() {
  // Two records are equal if they have the same shape (set of fields), 
  // and their corresponding fields have the same values.
  (int x, int y, int z) point = (1, 2, 3);
  (int r, int g, int b) color = (1, 2, 3);

  // Show results
  print(point == color);  // Prints 'true'
  print(point); // Prints (1, 2, 3)
  print(color); // Prints (1, 2, 3)

  // ----------------- //
  ({int a, int b, int c}) point2 = (a: 1, b: 2, c: 3);
  ({int d, int e, int f}) color2 = (d: 1, e: 2, f: 3);

  // Show results
  print(point2 == color2);  // Prints 'false'
  print(point2); // Prints (a: 1, b: 2, c: 3)
  print(color2); // Prints (d: 1, e: 2, f: 3)
}
