import 'package:clean_arch/src/core/utils/constants.dart';
import 'package:clean_arch/src/injector.dart';
import 'package:flutter/material.dart';

import 'src/presentation/routes/app_routes.dart';
import 'src/presentation/themes/app_theme.dart';

import 'package:flutter_dotenv/flutter_dotenv.dart';

Future<void> main() async {
  await dotenv.load();
  runApp(const Injector(
    router: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: kMaterialAppTitle,
      onGenerateRoute: AppRoutes.onGenerateRoutes,
      theme: AppTheme.light,
    );
  }
}
