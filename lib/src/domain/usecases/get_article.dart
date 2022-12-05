import 'package:clean_arch/src/domain/repositories/api_repository.dart';

class GetAricles {
  final ApiRepository apiRepository;
  GetAricles({
    required this.apiRepository,
  });

  Future execute() async => await apiRepository.getArticles();
}
