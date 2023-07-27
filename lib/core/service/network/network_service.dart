// ignore_for_file: overridden_fields

import 'package:dio/dio.dart';
import 'package:dio/io.dart';

import '../../../core/service/network/response_parser.dart';
import '../../base/model/base_model.dart';
import '../../constants/endPoints/end_point_constants.dart';
import '../../constants/enums/http_types_enums.dart';
import 'network_exception.dart';

class NetworkService with DioMixin {
  NetworkService._init() {
    interceptors.add(
      InterceptorsWrapper(
// gelen hatalara göre ne yapacağını burada belirliyoruz
        onError: NetworkException.instance.onError(),
      ),
    );
    httpClientAdapter = IOHttpClientAdapter();
  }

  static NetworkService? _instance;

  static NetworkService? get instance {
    _instance ??= NetworkService._init();
    return _instance;
  }

  @override
  final BaseOptions options = BaseOptions(
    baseUrl: EndPointConstants.baseUrl,
    connectTimeout: const Duration(seconds: 30),
    sendTimeout: const Duration(seconds: 30),
  );

  Future<R?> send<T extends BaseModel?, R>(
    String path, {
    required HttpTypes type,
    required T? parseModel,
    dynamic data,
    String? contentType,
    bool? isPagination,
    String? baseUrl,
    String? token,
    Map<String, dynamic>? queryParameters,
  }) async {
    final response = await request<dynamic>(
      path,
      data: data,
      options: Options(
        method: type.name,
        headers: {
          Headers.contentTypeHeader: contentType ?? Headers.jsonContentType,
        },
      ),
    );
    if (parseModel == null) {
      return null;
    }
    return responseParser<T, R>(parseModel as BaseModel<T>, response.data['users']);
  }
}
