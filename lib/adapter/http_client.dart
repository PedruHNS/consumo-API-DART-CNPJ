import 'package:http/http.dart' as http;

abstract interface class IHttpClient {
  get({required String url});
}

class HttpPackege implements IHttpClient {
  final client = http.Client();
  @override
  Future get({required String url}) async {
    await client.get(Uri.parse(url));
  }
}
