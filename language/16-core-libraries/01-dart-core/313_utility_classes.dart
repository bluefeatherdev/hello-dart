/// Dart Core Libraries: [dart:core]: Utility classes

/// The core library contains various utility classes,
/// useful for sorting, mapping values, and iterating.

import 'dart:collection';

/// ------- 1. [Comparing objects] ------- :
class Line implements Comparable<Line> {
  final int length;
  const Line(this.length);

  @override
  int compareTo(Line other) => length - other.length;
}

/// ------- 2. [Implementing map keys] ------- :
class Person {
  final String firstName, lastName;

  Person(this.firstName, this.lastName);

  // Override hashCode using the static hashing methods
  // provided by the `Object` class.
  @override
  int get hashCode => Object.hash(firstName, lastName);

  // You should generally implement operator `==`
  // if you override `hashCode`.
  @override
  bool operator ==(Object other) {
    return other is Person &&
        other.firstName == firstName &&
        other.lastName == lastName;
  }
}

/// ------- 3. [Iteration] ------- :
class Process {
  final int id;
  final String name;

  Process(this.id, this.name);

  @override
  String toString() => 'Process(id: $id, name: $name)';
}

class ProcessIterator implements Iterator<Process> {
  final List<Process> _processes;
  int _currentIndex = -1;

  ProcessIterator(this._processes);

  @override
  Process get current {
    if (_currentIndex < 0 || _currentIndex >= _processes.length) {
      throw StateError(
        'Cannot get current element. Iterator is not positioned correctly.',
      );
    }
    return _processes[_currentIndex];
  }

  @override
  bool moveNext() {
    _currentIndex++;
    return _currentIndex < _processes.length;
  }
}

// A mythical class that lets you iterate through all
// processes. Extends a subclass of [Iterable].
class Processes extends IterableBase<Process> {
  final List<Process> _processes;

  Processes(this._processes);

  @override
  ProcessIterator get iterator => ProcessIterator(_processes);
}

void main() {
  /// ------- 1. [Comparing objects] ------- :

  // Implement the `Comparable` interface to indicate that an object
  // can be compared to another object, usually for sorting.
  // The `compareTo()` method returns < 0 for smaller,
  // 0 for the same, and > 0 for bigger.

  var shortLine = const Line(1);
  var longLine = const Line(100);

  print(shortLine.compareTo(longLine)); // -99 (smaller)
  print(longLine.compareTo(longLine)); // 0 (the same)
  print(longLine.compareTo(shortLine)); // 99 (bigger)

  /// ------- 2. [Implementing map keys] ------- :

  var p1 = Person('Jesús', 'Domínguez');
  var p2 = Person('Jesús', 'Domínguez');
  var p3 = 'not a person';

  print(p1.hashCode == p2.hashCode); // true
  print(p1 == p2); // true
  print(p1 != p3); // true

  /// ------- 3. [Iteration] ------- :

  final allProcesses = Processes([
    Process(101, 'system_kernel'),
    Process(205, 'image_editor'),
    Process(310, 'music_player'),
    Process(401, 'flutter_app'),
  ]);

  print('Starting processes iteration.');
  for (final process in allProcesses) print(process); // ...
  print('Iteration completed.');
}
