/// Dart Keywords: [extends]

/// Use `extends` to create a subclass,
/// and `super` to refer to the superclass:
class Television {
  void turnOn() {
    print('Television is turned on');
  }
}

class SmartTelevision extends Television {
  @override
  void turnOn() {
    super.turnOn();
    print('And Wi-Fi is connected');
  }
}

void main() {
  final tv = Television();
  tv.turnOn(); // Prints: Television is turned on

  final smartTv = SmartTelevision();
  smartTv.turnOn();
  // Prints:
  // Television is turned on
  // And Wi-Fi is connected
}
