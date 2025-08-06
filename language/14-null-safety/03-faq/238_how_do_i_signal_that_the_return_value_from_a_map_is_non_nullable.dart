/// Dart Null Safety: [Frequently asked questions]

/// How do I signal that the return value from a Map is non-nullable?:
/// The [lookup operator] on Map ([]) by default returns a nullable type. 
/// There's no way to signal to the language that the value is guaranteed to be there.

/// In this case, you should use the not-null assertion operator (`!`) 
/// to cast the value back to `V`:
String checkMapValue(Object key) {
  Map<String, String> blockTypes = {
    'header': 'HeaderBlock',
    'footer': 'FooterBlock',
    'body': 'BodyBlock',
  };
  return blockTypes[key]!;  // Throws if key is not found
}

/// Which will throw if the map returns null. 
/// If you want explicit handling for that case:
String checkMapValue2(Object key) {
  Map<String, String> blockTypes = {
    'header': 'HeaderBlock',
    'footer': 'FooterBlock',
    'body': 'BodyBlock',
  };
  var result = blockTypes[key];
  if (result != null) return result;
  // Handle the null case here, e.g. throw with explanation.
  throw ArgumentError('key: "$key" not found in blockTypes map');
}

void main() {
  print(checkMapValue('header')); // HeaderBlock
  print(checkMapValue('footer')); // FooterBlock
  print(checkMapValue('body')); // BodyBlock
  // print(checkMapValue('gizmo')); // throw Unhandled exception

  print(checkMapValue2('header')); // HeaderBlock
  print(checkMapValue2('footer')); // FooterBlock
  print(checkMapValue2('body')); // BodyBlock
  // print(checkMapValue2('gizmo'));  // throw with explanation
}
