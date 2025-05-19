import 'package:http/http.dart' as http;

abstract class IHttpAdapter {
  Future<http.Response> get(String url);
}

class HttpClient implements IHttpAdapter {
  final http.Client client;

  HttpClient(this.client);

  @override
  Future<http.Response> get(String url) {
    return client.get(Uri.parse(url));
  }
}
