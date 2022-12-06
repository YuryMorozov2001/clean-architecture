import 'package:clean_arch/src/domain/usecases/article_uc.dart';
import 'package:clean_arch/src/presentation/bloc/news/news_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'data/datasources/remote/api_remote_data.dart';
import 'data/repositories/api_repository_impl.dart';

class Injector extends StatelessWidget {
  const Injector({super.key, required this.router});
  final Widget router;

  @override
  Widget build(BuildContext context) {
    final NewsBloc remoteConfigBloc = NewsBloc(
      articleUC: ArticleUC(
        apiRepository: ApiRepositoryImpl(
          apiRemoteData: NewsApi(),
        ),
      ),
    );
    return MultiBlocProvider(
      providers: [
        BlocProvider<NewsBloc>(
          create: (BuildContext context) => remoteConfigBloc..add(const Get()),
        ),
      ],
      child: router,
    );
  }
}
