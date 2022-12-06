import 'package:clean_arch/src/core/utils/constants.dart';
import 'package:clean_arch/src/models/article/article.dart';
import 'package:dio/dio.dart';

abstract class ApiRemote {
  Future<List<Article>> getArticles();
}

class NewsApi implements ApiRemote {
  final Dio dio;

  NewsApi({required this.dio});

  @override
  Future<List<Article>> getArticles() async {
    final response = await dio.get(kApiUrl,
        options: Options(headers: {'X-Api-Key': kApiKey}),
        queryParameters: {
          'q': 'bitcoin',
          'pageSize': 2,
        });
    if (response.statusCode == 200) {
      final List<Article> result = (response.data['articles'] as List)
          .map((e) => Article.fromJson(e))
          .toList();
      return result;
    } else {
      throw Exception();
    }
  }
}
