import 'package:dio/dio.dart';

import '../common/utils/constants/app_data_types.dart';
import '../common/utils/extentions/object_extention.dart';
import 'api_constant.dart';
import 'dio_exception.dart';

class DioClient {
  static Dio dio = Dio(BaseOptions(baseUrl: baseUrl, headers: {}))
    ..interceptors.addAll([]);

  static Future<ApiResponse> get(String endPoint,
      {Map<String, dynamic>? data, dynamic headers}) async {
    try {
      final response = await dio.get(endPoint,
          data: data, options: Options(headers: headers));
      if (response.statusCode == 200) {
        return (response: response, error: null);
      }
      return (response: null, error: 'Something went wrong');
    } on DioException catch (e) {
      final errorMsg = onDioException(e);
      final statusCodeErrorMsg = handleStatusCode(e.response?.statusCode);
      errorMsg.log();
      statusCodeErrorMsg.log();
      return (response: null, error: statusCodeErrorMsg);
    }
  }

  static Future<ApiResponse> post(String endPoint,
      {required Map<String, dynamic> data, dynamic headers}) async {
    try {
      final response = await dio.post(endPoint,
          data: data, options: Options(headers: headers));
      if (response.statusCode == 200) {
        return (response: response, error: null);
      }
      return (response: null, error: 'Something went wrong');
    } on DioException catch (e) {
      final errorMsg = onDioException(e);
      final statusCodeErrorMsg = handleStatusCode(e.response?.statusCode);
      errorMsg.log();
      statusCodeErrorMsg.log();
      return (response: null, error: statusCodeErrorMsg);
    }
  }
}
