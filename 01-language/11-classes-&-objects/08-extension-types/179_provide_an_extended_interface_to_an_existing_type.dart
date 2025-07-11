/// Dart Classes & Objects: Extension types

/// When an extension type [implements] its representation type, 
/// you can consider it "transparent", because it allows 
/// the extension type to "see" the underlying type.

/// This means you can invoke members of the representation type 
/// (unlike a [non-transparent] extension type), like so:
extension type NumberT(int value)
  implements int {
  // Doesn't explicitly declare any members of 'int'.
  NumberT get i => this;
}

void main() {
  // All OK: Transparency allows invoking `int` members on the extension type:
  var v1 = NumberT(1);  // v1 type: NumberT
  int v2 = NumberT(2);  // v2 type: int
  var v3 = v1.i - v1; // v3 type: int
  var v4 = v2 + v1; // v4 type: int
  var v5 = 2 + v1;  // v5 type: int
  // Error: Extension type interface is not available to representation type
  // v2.i;

  print(v1);  // 1
  print(v2);  // 2
  print(v3);  // 0
  print(v4);  // 3
  print(v5);  // 3
}
