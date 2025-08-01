/// Dart Null Safety: [Understanding null safety]

/// The `late` modifier has some other special powers too. 
/// It may seem paradoxical, but you can use `late` on a field 
/// that has an initializer:

// Using null safety:
class Weather {
  late int _temperature = _readThermometer();

  int get temperature {
    print('Accessing temperature...');
    return _temperature;
  }

  static int _readThermometer() {
    print('Reading thermometer...');
    return 30;
  }
}

/// When you do this, the initializer becomes [lazy]. 
/// Instead of running it as soon as the instance is constructed, 
/// it is deferred and run lazily the first time the field is accessed. 
/// In other words, it works exactly like an initializer on a top-level 
/// variable or static field. This can be handy when the initialization 
/// expression is costly and may not be needed.

/// Running the initializer lazily gives you an extra bonus when you use 
/// `late` on an instance field. Usually instance field initializers cannot 
/// access `this` because you don't have access to the new object until 
/// all field initializers have completed. But with a `late` field, that's 
/// no longer true, so you can access `this`, call methods, or access fields 
/// on the instance:

class Profile {
  final String name;
  final int birthYear;

  late int age = _calculateAge();

  Profile(this.name, this.birthYear);

  int _calculateAge() {
    final currentYear = DateTime.now().year;
    print('Calculating age for $name...');
    return currentYear - birthYear;
  }
}

void main() {
  print('Creating Weather instance...');
  var weather = Weather();
  
  print('Instance created. Temperature not accessed yet.');
  print('Now accessing temperature: ${weather.temperature}');

  // ---

  var profile = Profile('Jesús', 2004);
  print('Profile created.');
  print('Age: ${profile.age}');
}

/// If a server application fails, you can often restart it 
/// before anyone notices. But when a Flutter app crashes on 
/// a user's phone, they are not happy. When your users aren't happy, 
/// you aren't happy.
