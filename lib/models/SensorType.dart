enum SensorId {
  heartRate('HR'),
  spo2('SP');

  final String value;

  const SensorId(this.value);

  @override
  String toString() => value;
}