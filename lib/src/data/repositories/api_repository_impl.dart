import 'package:clean_arch/src/data/datasources/remote/api_remote_data.dart';
import 'package:clean_arch/src/domain/repositories/api_repository.dart';

import '../../models/article/article.dart';

class ApiRepositoryImpl implements ApiRepository {
  final ApiRemote apiRemoteData;

  ApiRepositoryImpl({required this.apiRemoteData});
  @override
  Future<List<Article>> getArticles() async {
    try {
      final articles = await apiRemoteData.getArticles();
      return articles;
    } catch (e) {
      throw Exception(e);
    }
  }
}
