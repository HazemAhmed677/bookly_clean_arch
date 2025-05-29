import 'package:bookly_clean_arch/core/networking/api_sturctures.dart';
import 'package:dio/dio.dart';

class ApiService {
  final String _baseURL = ApiConstants.baseUrl;
  final Dio dio;
  ApiService({required this.dio});
  Future<Map<String, dynamic>> get({required String endpoint}) async {
    var response = await Dio().get('$_baseURL$endpoint');
    return response.data;
  }
}
