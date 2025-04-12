class Alert {
  final String hwid;
  final String password;
  final int timestamp;
  final int sensorId;
  final String info;

  Alert({
    required this.hwid,
    required this.password,
    required this.timestamp,
    required this.sensorId,
    required this.info,
  });

  factory Alert.fromJson(Map<String, dynamic> json) {
    return Alert(
      hwid: json['hwid'],
      password: json['password'],
      timestamp: json['timestamp'],
      sensorId: json['sensorId'],
      info: json['info'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'hwid': hwid,
      'password': password,
      'timestamp': timestamp,
      'sensorId': sensorId,
      'info': info,
    };
  }
}

class ClientMessage {
  final String hwid;
  final String password;
  final int timestamp;
  final String type;

  ClientMessage({
    required this.hwid,
    required this.password,
    required this.timestamp,
    required this.type,
  });

  factory ClientMessage.fromJson(Map<String, dynamic> json) {
    return ClientMessage(
      hwid: json['hwid'],
      password: json['password'],
      timestamp: json['timestamp'],
      type: json['type'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'hwid': hwid,
      'password': password,
      'timestamp': timestamp,
      'type': type,
    };
  }
}