/// Dart Core Libraries: [dart:core]: URIs

/// The [Uri class] provides functions to encode and decode strings
/// for use in URIs (which you might know as URLs). These functions
/// handle characters that are special for URIs, such as `&` and `=`.
/// The Uri class also parses and exposes the components of a URI—host,
/// port, scheme, and so on.

void main() {
  /// ------- 1. [Encoding and decoding fully qualified URIs] ------- :

  var uri = 'https://example.org/api?foo=some message';

  var encoded = Uri.encodeFull(uri);
  print(encoded); // https://example.org/api?foo=some%20message
  print(encoded.runtimeType); // String
  print(encoded == 'https://example.org/api?foo=some%20message'); // true

  var decoded = Uri.decodeFull(encoded);
  print(decoded); // https://example.org/api?foo=some message
  print(decoded.runtimeType); // String
  print(uri == decoded); // true

  /// ------- 2. [Encoding and decoding URI components] ------- :

  // var uri = 'https://example.org/api?foo=some message';

  encoded = Uri.encodeComponent(uri);
  print(encoded); // https%3A%2F%2Fexample.org%2Fapi%3Ffoo%3Dsome%20message
  print(encoded.runtimeType); // String
  print(
    encoded == 'https%3A%2F%2Fexample.org%2Fapi%3Ffoo%3Dsome%20message',
  ); // true

  decoded = Uri.decodeComponent(encoded);
  print(decoded); // https://example.org/api?foo=some message
  print(decoded.runtimeType); // String
  print(uri == decoded); // true

  /// ------- 3. [Parsing URIs] ------- :

  var newUri = Uri.parse('https://example.org:8080/foo/bar#frag');
  print(newUri.scheme == 'https'); // true
  print(newUri.host == 'example.org'); // true
  print(newUri.path == '/foo/bar'); // true
  print(newUri.fragment == 'frag'); // true
  print(newUri.origin == 'https://example.org:8080'); // true

  /// ------- 4. [Building URIs] ------- :

  // Build up a URI from individual parts using the Uri() constructor:
  var specialUri = Uri(
    scheme: 'https',
    host: 'example.org',
    path: '/foo/bar',
    fragment: 'frag',
    queryParameters: {'lang': 'dart'},
  );
  print(specialUri); // https://example.org/foo/bar?lang=dart#frag
  print(specialUri.runtimeType); // _Uri
  print(
    specialUri.toString() == 'https://example.org/foo/bar?lang=dart#frag',
  ); // true

  // Create a URI without a http or https scheme (factory constructors).
  var httpUri = Uri.http('example.org', '/foo/bar', {'lang': 'dart'});
  var httpsUri = Uri.https('example.org', '/foo/bar', {'lang': 'dart'});

  print(httpUri.runtimeType); // _Uri
  print(httpUri.toString()); // http://example.org/foo/bar?lang=dart

  print(httpsUri.runtimeType); // _Uri
  print(httpsUri.toString()); // https://example.org/foo/bar?lang=dart
}
