class HttpException implements Exception {
  final String msg;
  final int statuCodes;

  HttpException({
    required this.msg,
    required this.statuCodes,
  });

  @override
  String toString() {
    return msg;
  }
}
