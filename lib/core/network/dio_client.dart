import 'package:dio/dio.dart';
import 'package:dio/io.dart';

class DioClient {
  Dio dio;

  DioClient()
    : dio = Dio(
        BaseOptions(
          baseUrl: 'https://mytelapi-live.ringme.vn', // Đặt URL gốc của API
          connectTimeout: Duration(seconds: 5), // Timeout kết nối 5 giây
          receiveTimeout: Duration(seconds: 3), // Timeout nhận dữ liệu 3 giây
        ),
      ) {

    //Log
    dio.interceptors.add(
      ApiInterceptor(),
    );

    //SSL
    dio.httpClientAdapter =
        IOHttpClientAdapter()
          ..onHttpClientCreate = (client) {
            client.badCertificateCallback = (cert, host, port) => true;
            return client;
          };
  }

  Dio get client => dio;
}

class ApiInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    print("📡 API Request: ${options.method} ${options.uri}");
    print("🔹 Headers: ${options.headers}");
    if (options.data != null) print("🔹 Body: ${options.data}");
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    print("🔹 Status Code: ${response.statusCode}");
    print("🔹 Response Data: ${response.data}");
    super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    print("❌ API Error: ${err.requestOptions.uri}");
    print("🔹 Error Message: ${err.message}");

    super.onError(err, handler);
  }
}
