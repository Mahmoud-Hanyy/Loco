//parent class of errors

class Failures {
  String? errorMessage;

  Failures({required this.errorMessage});
}

class ServerError extends Failures {
  String? errorMessage;

  ServerError({required super.errorMessage});
}

class NetworkError extends Failures {
  String? errorMessage;

  NetworkError({required super.errorMessage});
}
