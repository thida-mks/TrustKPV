// ignore_for_file: avoid_print

import 'package:dio/dio.dart';
import 'package:get_storage/get_storage.dart';
import 'package:logger/logger.dart';

final box = GetStorage();
final logger = Logger();
final Dio dioglobalgold = Dio(
  BaseOptions(
    connectTimeout: 19000,
    receiveTimeout: 19000,
    headers: {
      "Content-Type": "application/json",
      "Accept": "application/json",
    },
    baseUrl: 'https://data-asg.goldprice.org/',
  ),
)..interceptors.add(GlobalpriceLogging());

class GlobalpriceLogging extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    print(
        'REQUEST[${options.method}] => PATH: ${options.baseUrl} ${options.path}');
    return handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    print(
      'RESPONSE[${response.statusCode}] => PATH: ${response.requestOptions.path}',
    );
    return handler.next(response);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    print(
      'ERROR[${err.response?.statusCode}] => PATH: ${err.requestOptions.path}',
    );
    if (err.response?.statusCode == 401) {
      logger.e('LDB ${err.response}');
    } else {
      logger.e(err);
    }
    return handler.next(err);
  }
}


final Dio diokpvgold = Dio(
  BaseOptions(headers: {
    'kpv_key': '66cdf19ddb86ff2f55bcec57b411d566a7769517',
    'client_secret': 'LDB'
  })
)..interceptors.add(GlobalpriceLogging());