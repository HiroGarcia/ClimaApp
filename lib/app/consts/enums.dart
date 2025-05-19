import 'package:flutter_dotenv/flutter_dotenv.dart';

enum Environment {
  development(
    baseUrl: 'https://api.hgbrasil.com/weather',
    apiKey: '',
  ),
  production(
    baseUrl: 'https://api.hgbrasil.com/weather',
    apiKey: '',
  );

  final String baseUrl;
  final String apiKey;
  const Environment({required this.baseUrl, required this.apiKey});

  String get resolvedApiKey {
    return dotenv.env['API_KEY'] ?? '';
  }
}
