// import 'package:dio/dio.dart';
// import 'package:dio/io.dart';
// import 'models/rm_livestream_response.dart';
//
// class ApiService {
//   final Dio _dio = Dio();
//   ApiService() {
//     _dio.interceptors.add(ApiInterceptor()); // Thêm interceptor trong constructor
//     _dio.httpClientAdapter = IOHttpClientAdapter()
//       ..onHttpClientCreate = (client) {
//         client.badCertificateCallback = (cert, host, port) => true;
//         return client;
//       };
//   }
//
//   static const String DOMAIN_LIVESTREAM = "https://mytelapi-live.ringme.vn";
//   static const String LIVESTREAM_LIST_TOP = "/LivestreamAPI/v2/my_livestream/all";
//
//   Future<RMLivestreamResponse> getListLivestream({
//     required String userId,
//     required int featureId,
//     required int page,
//     required int size,
//   }) async {
//     try {
//       Response response = await _dio.get(
//         "$DOMAIN_LIVESTREAM$LIVESTREAM_LIST_TOP",
//         queryParameters: {
//           "userId": userId,
//           "featureId": featureId,
//           "page": page,
//           "size": size,
//         },
//         options: Options(
//           headers: {
//             "Accept-language": "en",
//             "Content-Type": "application/json",
//           },
//         ),
//       );
//
//       return RMLivestreamResponse.fromJson(response.data);
//     } catch (e) {
//       print("Lỗi khi gọi API: $e");
//       throw Exception("Lỗi khi gọi API: $e");
//     }
//   }
// }
//
//
// class ApiInterceptor extends Interceptor {
//   @override
//   void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
//     print("📡 API Request: ${options.method} ${options.uri}");
//     print("🔹 Headers: ${options.headers}");
//     if (options.data != null) print("🔹 Body: ${options.data}");
//     super.onRequest(options, handler);
//   }
//
//   @override
//   void onResponse(Response response, ResponseInterceptorHandler handler) {
//     print("🔹 Status Code: ${response.statusCode}");
//     print("🔹 Response Data: ${response.data}");
//     super.onResponse(response, handler);
//   }
//
//   @override
//   void onError(DioException err, ErrorInterceptorHandler handler) {
//     print("❌ API Error: ${err.requestOptions.uri}");
//     print("🔹 Error Message: ${err.message}");
//
//     super.onError(err, handler);
//   }
// }

