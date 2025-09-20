/// Dart Core Libraries: [dart:core]: Dates and times

/// A DateTime object is a point in time. The time zone is either UTC
/// or the local time zone. You can create DateTime objects
/// using several constructors and methods.

void main() {
  /// ------- 1. [Encoding and decoding fully qualified URIs] ------- :

  // Get the current date and time.
  var now = DateTime.now();
  print(now); // e.g. 2025-09-18 19:05:08.870425
  print(now.runtimeType); // DateTime

  // Create a new DateTime with the local time zone.
  var y2k = DateTime(2000); // January 1, 2000
  print(y2k); // 2000-01-01 00:00:00.000
  print(y2k.runtimeType); // DateTime

  // Specify the month and day.
  y2k = DateTime(2000, 1, 2); // January 2, 2000
  print(y2k); // 2000-01-02 00:00:00.000
  print(y2k.runtimeType); // DateTime

  // Specify the date as a UTC time.
  y2k = DateTime.utc(2000); // 1/1/2000, UTC
  print(y2k); // 2000-01-01 00:00:00.000Z
  print(y2k.runtimeType); // DateTime

  // Specify a date and time in ms since the Unix epoch.
  y2k = DateTime.fromMillisecondsSinceEpoch(946684800000, isUtc: true);
  print(y2k); // 2000-01-01 00:00:00.000Z
  print(y2k.runtimeType); // DateTime

  // Parse an ISO 8601 date in the UTC time zone.
  y2k = DateTime.parse('2000-01-01T00:00:00Z');
  print(y2k); // 2000-01-01 00:00:00.000Z
  print(y2k.runtimeType); // DateTime

  // Create a new DateTime from an existing one,
  // adjusting just some properties.
  var someTimeLastYear = now.copyWith(year: now.year - 1);
  print(someTimeLastYear); // 2024-09-18 19:16:21.682908
  print(someTimeLastYear.runtimeType); // DateTime

  // Returns the number of milliseconds since the 'Unix Epoch',
  // (January 1, 1970, UTC).
  y2k = DateTime.utc(2000); // 1/1/2000, UTC
  print(y2k); // 2000-01-01 00:00:00.000Z
  print(y2k.runtimeType); // DateTime
  print(y2k.millisecondsSinceEpoch); // 946684800000
  print(y2k.millisecondsSinceEpoch == 946684800000); // true

  var unixEpoch = DateTime.utc(1970); // 1/1/1970, UTC
  print(unixEpoch); // 1970-01-01 00:00:00.000Z
  print(unixEpoch.runtimeType); // DateTime
  print(unixEpoch.millisecondsSinceEpoch); // 0
  print(unixEpoch.millisecondsSinceEpoch == 0); // true

  // Use the Duration class to calculate the difference between two dates,
  // and to shift a date forward or backward.
  // y2k = DateTime.utc(2000);
  var y2001 = y2k.add(const Duration(days: 366)); // Add one year.
  print(y2001); // 2001-01-01 00:00:00.000Z
  print(y2001.runtimeType); // DateTime

  var december2000 = y2001.subtract(
    const Duration(days: 30),
  ); // Subtract 30 days.
  print(december2000); // 2000-12-02 00:00:00.000Z
  print(december2000.runtimeType); // DateTime
  print(december2000.year == 2000); // true
  print(december2000.month == 12); // true

  var duration = y2001.difference(y2k);
  print(duration); // 8784:00:00.000000
  print(duration.runtimeType); // Duration
  print(duration.inDays == 366); // true
  print(duration.inHours == 8784); // true
  print(duration.inMinutes == 527040); // true
  print(duration.inSeconds == 31622400); // true
  print(duration.inMilliseconds == 31622400000); // true
}
