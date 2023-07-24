import 'package:dio/dio.dart';
import 'package:video_app/model/feed_response.dart';

class UserRepository {
  final String apiKey =
      'vqiId5uE8QBTXO9iw51ILTRjCPKTbS6MB1h0oHBLTTey0Ks8EkMlgBUr';
  static String mainUrl = 'https://api.pexels.com';
  final Dio _dio = Dio();
  var getFeedsApi = '$mainUrl/videos/search';

  Future<FeedResponse> getFeeds() async {
    var params = {
      'api_key': apiKey,
      'query': 'Dancing',
      'orientation': 'portrait'
    };

    try {
      _dio.interceptors.add(InterceptorsWrapper(
        onRequest: (options, handler) async {
          options.headers['Authorization'] = apiKey;
          _dio.interceptors.requestLock.unlock();
          return handler.next(options);
        },
      ));
      Response response = await _dio.get(getFeedsApi, queryParameters: params);
      return FeedResponse.fromJson(response.data);
    } catch (error) {
      return FeedResponse.withError(error.toString());
    }
  }
}
