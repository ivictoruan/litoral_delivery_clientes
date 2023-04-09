
import 'package:http/http.dart' as http;

class ApiService {
  static const String baseUrl = 'http://192.168.1.3:8000/';
  final http.Client httpClient;

  ApiService({required this.httpClient});

  Future<http.Response> get(String endpoint) async {
    final url = Uri.parse('$baseUrl$endpoint');
    final response = await httpClient.get(url);
    
    return response;
  }

  Future<http.Response> post(String endpoint, Map<String, dynamic> body) async {
    final url = Uri.parse('$baseUrl$endpoint');
    final response = await httpClient.post(url, body: body);
    return response;
  }

  // outras funções para PUT, DELETE, etc.
}