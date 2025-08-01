/// Dart Null Safety: [Understanding null safety]

/// The great thing about using flow analysis to move a nullable variable 
/// to the non-nullable side of the world is that doing so is provably safe. 
/// You get to call methods on the previously-nullable variable without 
/// giving up any of the safety or performance of non-nullable types.

/// But many valid uses of nullable types can't be proven to be safe 
/// in a way that pleases static analysis. For example:

class HttpResponse {
  final int code;
  final String? error;

  HttpResponse.ok()
    : code = 200,
      error = null;
  HttpResponse.notFound()
    : code = 404,
      error = 'Not found';

  @override
  String toString() {
    if (code == 200) return 'OK';
    /// Using null safety, incorrectly:
    /// `return 'ERROR $code ${error.toUpperCase()}';`
    /// Using null safety, with casting `as`:
    /// `return 'ERROR $code ${(error as String).toUpperCase()}';`
    /// Using null safety, with bang operador `!`:
    return 'ERROR $code ${error!.toUpperCase()}';
  }
}

void main() {
  final goodServerResponde = HttpResponse.ok();
  print(goodServerResponde);  // OK

  final badServerResponde = HttpResponse.notFound();
  print(badServerResponde); // ERROR 404 NOT FOUND
}

/// If a server application fails, you can often restart it 
/// before anyone notices. But when a Flutter app crashes on 
/// a user's phone, they are not happy. When your users aren't happy, 
/// you aren't happy.
