import 'SensorData.dart';

class Chunk {
  final String hwid;
  final int timestamp;
  final String password;
  final List<SensorData> payload;

  Chunk({
    required this.hwid,
    required this.timestamp,
    required this.password,
    required this.payload,
  });

  factory Chunk.fromJson(Map<String, dynamic> json) {
    return Chunk(
      hwid: json['hwid'],
      timestamp: json['timestamp'],
      password: json['password'],
      payload: (json['payload'] as List)
          .map((item) => SensorData.fromJson(item))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'hwid': hwid,
      'timestamp': timestamp,
      'password': password,
      'payload': payload.map((item) => item.toJson()).toList(),
    };
  }
}