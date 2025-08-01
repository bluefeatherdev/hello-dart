/// Dart Null Safety: [Understanding null safety]

/// To guarantee that you never see a `null` parameter with a non-nullable 
/// type, the type checker requires all optional parameters to either 
/// have a nullable type or a default value. What if you want to have 
/// a named parameter with a non-nullable type and no default value? 
/// That would imply that you want to require the caller to [always] pass it. 
/// In other words, you want a parameter that is [named] but not optional.

/// I visualize the various kinds of Dart parameters with this table:
/// | Type        | Mandatory       | Optional           |
/// |-------------|-------------------|--------------------|
/// | positional  | `f(int x)`        | `f([int x])`       |
/// | named    | `f({required int x})` | `f({int x})`    |

/// For unclear reasons, Dart has long supported three corners of this 
/// table but left the combination of named+mandatory empty. With null 
/// safety, we filled that in. You declare a required named parameter 
/// by placing `required` before the parameter:

// Using null safety:
function({int? a, required int? b, int? c, required int? d}) {}

/// Here, all the parameters must be passed by name. 
/// The parameters `a` and `c` are optional and can be omitted. 
/// The parameters `b` and `d` are required and must be passed. 
/// Note that required-ness is independent of nullability. 
/// You can have required named parameters of nullable types, 
/// and optional named parameters of non-nullable types 
/// (if they have a default value).

void main() {
  function(a: null, b: null, c: null, d: null); // OK
  function(b: null, d: null); // OK
  function(b: 2, d: 4); // OK
  function(a: 1, b: 2, c: 3, d: 4); // OK
  function(a: null, b: 2, c: 3, d: null); // OK
  function(a: 1, b: null, c: null, d: 4); // OK
  function(a: null, b: 3, d: 4); // OK
  function(b: 2, c: null, d: 4,); // OK
  // ...
  print('And so on...');
}

/// If a server application fails, you can often restart it 
/// before anyone notices. But when a Flutter app crashes on 
/// a user's phone, they are not happy. When your users aren't happy, 
/// you aren't happy.
