// Inheritance in Dart
class Spacecraft {
  String name;
  DateTime? launchDate;

  // Read-only non-final property.
  int? get launchYear => launchDate?.year;
  
  // Constructor, with syntactic sugar for assignment to members.
  Spacecraft(this.name, this.launchDate) {
    // Initialization code goes here.
  }

  // Named constructor that forwards to the main default one.
  Spacecraft.unlaunched(String name) : this(name, null);

  // Method.
  void describe() {
    print('Spacecraft: $name');
    // Type promotion doesn't work on getters.
    var launchDate = this.launchDate;
    if (launchDate != null) {
      int years = DateTime.now().difference(launchDate).inDays ~/ 365;
      print('Launched: $launchYear ($years years ago)');
    } else {
      print('Unlaunched');
    }
  }
}

class Orbiter extends Spacecraft{
  double altitude;

  Orbiter(super.name, DateTime super.launchDate, this.altitude);
}

void main() {
  var voyager = Orbiter('Columbia', DateTime(1981, 4, 12), 621000.0);
  voyager.describe();

  var voyager2 = Orbiter('Discovery', DateTime(1984, 8, 30), 621000.0);
  voyager2.describe();

  var voyager3 = Spacecraft('Voyager III', null);
  voyager3.describe();
}
