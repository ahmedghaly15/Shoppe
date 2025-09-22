part of '../utils.dart';

Future<ApiRequestResult<T>> executeAndHandleApiRequest<T>(
  Future<T> Function() function,
) async {
  try {
    final response = await function();
    return ApiRequestResult<T>.success(response);
  } catch (error) {
    debugPrint('********* Error in executeAndHandleErrors: $error **********');
    return ApiRequestResult.failure(ApiErrorHandler.handle(error));
  }
}
