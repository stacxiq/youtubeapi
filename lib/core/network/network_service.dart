import 'package:dio/dio.dart';
import 'package:elearning/core/constants/api_constants.dart';

class Network {
  static final dio = Dio(
    BaseOptions(
        baseUrl: ApiConstants.baseUrl, receiveDataWhenStatusError: true),
  );

  static Future<void> initializeInterceptors() async {
    dio.interceptors.add(InterceptorsWrapper(
      onRequest: (request, handler) async {
        var headers = {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        };

        request.headers.addAll(headers);
        print(request.uri.toString());

        return handler.next(request); //continue
      },
      onResponse: (response, handler) {
        print(response.requestOptions.headers);
        print(response.data);

        return handler.next(response); // continue
      },
      onError: (error, handler) {
        return handler.next(error); //continue
      },
    ));
  }
}
