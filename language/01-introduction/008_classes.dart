// Classes in Dart
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

void main() {
  var voyager = Spacecraft('Voyager I', DateTime(1977, 9, 5));
  voyager.describe();

  var voyager2 = Spacecraft('Voyager II', DateTime(1977, 8, 20));
  voyager2.describe();

  var voyager3 = Spacecraft('Voyager III', null);
  voyager3.describe();
}
