import 'package:clean_arch/src/core/utils/constants.dart';
import 'package:clean_arch/src/models/article/article.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/news/news_bloc.dart';
import '../../components/home_widgets/articles_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(kMaterialAppTitle)),
      body: const HomeBody(),
    );
  }
}

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsBloc, NewsState>(
      builder: (context, state) {
        if (state.status.isLoading()) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        if (state.status.isCompleted()) {
          return ArticlesListWidget(
            articles: state.articles!,
          );
        }
        return Center(
          child: Text(state.status.description),
        );
      },
    );
  }
}
