import '../../models/article/article.dart';

abstract class ApiRepository {
  Future<List<Article>> getArticles();
}
