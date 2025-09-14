/// A library for awesome math operations.
/// Provides constants and functions with modular structure.
library awesome_math;

part './src/constants.dart';
part './src/operations.dart';

/// Public API
double add(double a, double b) => _add(a, b);
double multiply(double a, double b) => _multiply(a, b);
double get pi => _pi;
