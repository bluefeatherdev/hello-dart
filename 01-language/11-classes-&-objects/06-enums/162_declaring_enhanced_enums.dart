/// Dart Classes & Objects: Enums

/// Here is an example that declares an [enhanced enum] 
/// with multiple instances, instance variables, getters, 
/// and an implemented interface:
enum Vehicle implements Comparable<Vehicle> {
  car(tires: 4, passengers: 5, carbonPerKilometer: 400),
  bus(tires: 6, passengers: 50, carbonPerKilometer: 800),
  bicycle(tires: 2, passengers: 1, carbonPerKilometer: 0);

  const Vehicle({
    required this.tires,
    required this.passengers,
    required this.carbonPerKilometer,
  });

  final int tires;
  final int passengers;
  final int carbonPerKilometer;

  int get carbonFootprint =>
    (carbonPerKilometer / passengers).round();

  bool get isTwoWheeled =>
    this == Vehicle.bicycle;

  @override
  int compareTo(Vehicle other) =>
    carbonFootprint - other.carbonFootprint;
}

void main() {
  // Show all defined vehicles
  for (final Vehicle vehicle in Vehicle.values) {
    print('🚗 ${vehicle.name.toUpperCase()}');
    print('- Tires: ${vehicle.tires}');
    print('- Passengers: ${vehicle.passengers}');
    print('- Total emission: ${vehicle.carbonPerKilometer}');
    print('- Footprint per Passengers: ${vehicle.carbonFootprint}');
    print('- Has it two tires?: ${vehicle.isTwoWheeled}\n');
  }

  // Compare vehicles for carbon footprint
  var sortedVehicles = Vehicle.values.toList()
    ..sort();
  
  print('🌱 Vehicles ordered by carbon footprint:');
  for (final v in sortedVehicles) {
    print('- ${v.name}: ${v.carbonFootprint}');
  }
}
