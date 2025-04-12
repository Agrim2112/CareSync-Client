class SensorData {
  final int sensorId;
  final List<SensorLog> data;

  SensorData({
    required this.sensorId,
    required this.data,
  });

  factory SensorData.fromJson(Map<String, dynamic> json) {
    return SensorData(
      sensorId: json['sensorId'],
      data: (json['data'] as List)
          .map((item) => SensorLog.fromJson(item))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'sensorId': sensorId,
      'data': data.map((item) => item.toJson()).toList(),
    };
  }
}

class SensorLog {
  final int timestamp;
  final List<double> data;

  SensorLog({
    required this.timestamp,
    required this.data,
  });

  factory SensorLog.fromJson(Map<String, dynamic> json) {
    return SensorLog(
      timestamp: json['timestamp'],
      data: (json['data'] as List).map((item) => item is double ? item : (item as num).toDouble()).toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'timestamp': timestamp,
      'data': data,
    };
  }
}

