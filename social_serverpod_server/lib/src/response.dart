Map<String, dynamic> successResponse(String message, dynamic data, {int status = 200}) {
    return {
      'message': message,
      'status': status,
      'data': data,
    };
  }

  /// Helper method to create error response
  Map<String, dynamic> errorResponse(String message, {int status = 400}) {
    return {
      'message': message,
      'status': status,
      'data': null,
    };
  }