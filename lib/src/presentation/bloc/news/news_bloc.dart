import 'package:clean_arch/src/core/utils/enums.dart';
import 'package:clean_arch/src/domain/usecases/article_uc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../models/article/article.dart';

part 'news_event.dart';
part 'news_state.dart';
part 'news_bloc.freezed.dart';

class NewsBloc extends Bloc<NewsEvent, NewsState> {
  final ArticleUC articleUC;
  NewsBloc({required this.articleUC}) : super(const _State()) {
    on<Get>((event, emit) async {
      emit(state.copyWith(status: Status.loading));
      try {
        final List<Article> articles = await articleUC.getArtticles();
        emit(state.copyWith(status: Status.completed, articles: articles));
      } catch (e) {
        emit(state.copyWith(status: Status.failed));
        throw Exception(e);
      }
    });
  }
}
