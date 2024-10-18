class ApiError {
  final String message;
  final int? statusCode;

  ApiError(
    this.message,
    {this.statusCode}
  );

   @override
  String toString() {
    if (statusCode != null) {
      return 'Error $statusCode: $message';
    }
    return message;
  }
}

ApiError handleHttpError(int statusCode, String responseBody) {
  switch (statusCode) {
    case 400:
      return ApiError('Bad Request - Invalid input', statusCode: 400);
    case 404:
      return ApiError('Not Found - Resource not available', statusCode: 404);
    case 500:
      return ApiError('Internal Server Error - Something went wrong', statusCode: 500);
    default:
      return ApiError('Unexpected Error - Status code: $statusCode', statusCode: statusCode);
  }
}