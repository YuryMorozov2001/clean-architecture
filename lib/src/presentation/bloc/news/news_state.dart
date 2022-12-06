part of 'news_bloc.dart';

@freezed
class NewsState with _$NewsState {
  const factory NewsState({
    List<Article>? articles,
    @Default(Status.empty) Status status,
  }) = _State;
}
