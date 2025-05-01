class EndPoints {
  static const String baseUrl = "http://localhost:3000/api/";

  static const String fetchAllChunks = "${baseUrl}getallrawdata";
  static const String fetchChunkAfterTimestamp = "${baseUrl}getrawdataafter";
}