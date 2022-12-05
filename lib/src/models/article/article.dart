import 'package:freezed_annotation/freezed_annotation.dart';
part 'article.freezed.dart';
part 'article.g.dart';

@freezed
class Article with _$Article {
  const factory Article(
      {required String author,
      required String title,
      required String description,
      @JsonKey(name: 'urlToImage') String? imageUrl}) = _Article;

  factory Article.fromJson(Map<String, dynamic> json) =>
      _$ArticleFromJson(json);
}
