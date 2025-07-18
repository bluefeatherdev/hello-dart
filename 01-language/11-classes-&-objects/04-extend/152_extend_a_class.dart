/// Dart Classes & Objects: Extend a class

/// Use `extends` to create a subclass, 
/// and `super` to refer to the superclass:
class Television {
  void turnOn() {
    _illuminateDisplay();
    _activateIrSensor();
  }

  void _illuminateDisplay() {
    print('Illuminated screen.');
  }

  void _activateIrSensor() {
    print('Activated infrared sensor.');
  }
}

class SmartTelevision extends Television {
  @override
  void turnOn() {
    super.turnOn();
    _bootNetworkInterface();
    _initializeMemory();
    _upgradeApps();
  }

  void _bootNetworkInterface() {
    print('Started network interface.');
  }

  void _initializeMemory() {
    print('Initialized memory.');
  }

  void _upgradeApps() {
    print('Updated applications.');
  }
}

/// For another usage of `extends`, 
/// see the discussion of [parameterized types] 
/// on the [Generics] page.

void main() {
  print('Turning conventional television on:');
  var tv = Television();
  tv.turnOn();

  print('\nTurning smart television on:');
  var smartTv = SmartTelevision();
  smartTv.turnOn();
}
