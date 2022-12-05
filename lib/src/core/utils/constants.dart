import 'package:flutter_dotenv/flutter_dotenv.dart';

const String kMaterialAppTitle = 'Flutter Clean Arch';

const String kApiUrl = 'https://newsapi.org/v2/everything';
final String? kApiKey = dotenv.env['NEWS_API_KEY'];
