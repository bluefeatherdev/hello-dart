// Operators in Dart
void main() {
  /* 
    * Cascades (.., ?..) allow you to make a sequence of operations 
    * on the same object. In addition to accessing instance members, 
    * you can also call instance methods on that same object. 
    * This often saves you the step of creating 
    * a temporary variable and allows you to write more fluid code.
  */

  // Consider the following code:
  // var paint = Paint();
  //   ..color = Colors.black
  //   ..strokeCap = StrokeCap.round
  //   ..strokeWidth = 5.0;

  // The previous example is equivalent to this code:
  // var paint = Paint();
  // paint.color = Colors.black;
  // paint.strokeCap = StrokeCap.round;
  // paint.strokeWidth = 5.0;

  /// tarting with [?..] guarantees that none of the 
  /// cascade operations are attempted on that null object.
  // document.querySelector('#confirm')  // Get an object.
  //   ..textContent =
  //     'Confirm' // Use its members.
  //   ..classList.add('important')
  //   ..onClick.listen((e) => window.alert('Confirmed!'))
  //   ..scrollIntoView();

  // The previous code is equivalent to the following:
  // final button = document.querySelector('#confirm');
  // button?.textContent = 'Confirm';
  // button?.classList.add('important');
  // button?.onClick.listen((e) => window.alert('Confirmed!'));
  // button?.scrollIntoView();

  // You can also nest cascades. For example:
  // final addressBook = 
  //   (AddressBookBuilder()
  //       ..name = 'jenny'
  //       ..email = 'jenny@example.com'
  //       ..phone =
  //         (PhoneNumberBuilder()
  //           ..number = '415-555-0100'
  //           ..label = 'home')
  //           .build())
  //     .build();

  // Be careful to construct your cascade on 
  // a function that returns an actual object. 
  // For example, the following code fails:
  // var sb = StringBuffer();
  // sb.write('foo')
  //   ..write('bar'); 
  // Error: method 'write' isn't defined for 'void'.
  /// The `sb.write()` call returns void, 
  /// and you can't construct a cascade on [void].
  
  print('Hello, Dart!');
}
