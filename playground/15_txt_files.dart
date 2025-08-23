/// Playground: [How to use txt files in Dart]

import 'dart:io';

/// 1. [Create and Write to a File]:
Future<void> createWriteFile() async {
  final file = File('bin/example2.txt');

  try {
    await file.writeAsString('Hello, Dart!');
    print('File created and written successfully.');
  } catch (e) {
    print('Error creating/writing file content: ${e}');
  }
}

/// 2. [Append content to a File]:
Future<void> appendContentFile() async {
  final file = File('bin/example2.txt');

  try {
    await file.writeAsString('\nAppend text.', mode: FileMode.append);
    print('Content appended successfully.');
  } catch (e) {
    print('Error appending file content: ${e}');
  }
}

/// 3. [Overwrite File content]:
Future<void> overwriteContentFile() async {
  final file = File('bin/example2.txt');
  
  try {
    await file.writeAsString('This is new content');
    print('File content overwritten successfully.');
  } catch (e) {
    print('Error overwriting file content: ${e}');
  }
}

/// 4. [Read File content]:
Future<void> readContentFile() async {
  final file = File('bin/example2.txt');

  try {
    if (await file.exists()) {
      final contents = await file.readAsString();
      print('Final file contents:\n$contents');
    } else {
      print('File does not exist.');
    }
  } catch (e) {
    print('Error reading file content: ${e}');
  }
}

/// 5. [Delete File]:
Future<void> deleteFile() async {
  final file = File('bin/example2.txt');

  try {
    if (await file.exists()) {
      await file.delete();
      print('File deleted successfully.');
    } else {
      print('File does not exist.');
    }
  } catch (e) {
    print('Error deleting file: ${e}');
  }
}

void main() async {
  /// 1. [Create and Write to a File]:
  await createWriteFile();
  await readContentFile(); /// 4. [Read File content]

  /// 2. [Append content to a File]:
  await appendContentFile();
  await readContentFile(); /// 4. [Read File content]

  /// 3. [Overwrite File content]:
  await overwriteContentFile();
  await readContentFile(); /// 4. [Read File content]

  /// 5. [Delete File]:
  await deleteFile();
  await readContentFile(); /// 4. [Read File content]
}
