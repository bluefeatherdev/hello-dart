// Async in Dart
void main() {
  print('Hello, Dart!');
  // // Coming soon: async and await...
  // const oneSecond = Duration(seconds: 1);
  // Future<void> printWithDelay(String message) async {
  //   await Future.delayed(oneSecond);
  //   print(message);
  // }

  // The method above is equivalent to:
  // Future<void> printWithDelay(String message) {
  //   return Future.delayed(oneSecond).then((_) {
  //     print(message);
  //   });
  // }

  // // Coming soon: async and await...
  // Future<void> createDescriptions(Iterable<String> objects) async {
  //   for (final object in objects) {
  //     try {
  //       var file = File('$object.txt');
  //       if (await file.exist()) {
  //         var modified = await file.lastModified();
  //         print(
  //           'File for $object already exists. It was modified on $modified.',
  //         );
  //         continue;
  //       }
  //       await file.create();
  //       await file.writeAsString('Start describing $object in this file.');
  //     } on IOException catch (e) {
  //       print('Cannot create description for $object: $e');
  //     }
  //   }
  // }

  // // Coming soon: async*...
  // Stream<int> report(Spacecraft craft, Iterable<String> objects) async* {
  //   for (final object in objects) {
  //     await Future.delayed(oneSecond);
  //     yield '${craft.name} files by $object';
  //   }
  // }
}
