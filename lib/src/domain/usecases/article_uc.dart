import 'package:clean_arch/src/domain/repositories/api_repository.dart';
import 'package:clean_arch/src/models/article/article.dart';

class ArticleUC {
  final ApiRepository apiRepository;
  ArticleUC({
    required this.apiRepository,
  });

  Future<List<Article>> getArtticles() async =>
      await apiRepository.getArticles();
}
