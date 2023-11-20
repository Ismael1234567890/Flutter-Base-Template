import 'package:http/http.dart' as http;
import 'dart:convert';

// for use
// final httpClient = HttpClient(baseUrl: 'https://yourapi.com');
// final response = await httpClient.get('/endpoint');
// print(json.decode(response.body));
// ============================================

class HttpClient {
  final String baseUrl;

  HttpClient({required this.baseUrl});

  Future<http.Response> get(String endpoint) async {
    final response = await http.get(Uri.parse('$baseUrl$endpoint'));
    _handleResponse(response);
    return response;
  }

  Future<http.Response> post(String endpoint,
      {Map<String, dynamic>? data}) async {
    final response = await http.post(
      Uri.parse('$baseUrl$endpoint'),
      headers: {"Content-Type": "application/json"},
      body: json.encode(data),
    );
    _handleResponse(response);
    return response;
  }

  Future<http.Response> put(String endpoint,
      {Map<String, dynamic>? data}) async {
    final response = await http.put(
      Uri.parse('$baseUrl$endpoint'),
      headers: {"Content-Type": "application/json"},
      body: json.encode(data),
    );
    _handleResponse(response);
    return response;
  }

  Future<http.Response> delete(String endpoint) async {
    final response = await http.delete(Uri.parse('$baseUrl$endpoint'));
    _handleResponse(response);
    return response;
  }

  void _handleResponse(http.Response response) {
    if (response.statusCode != 200) {
      throw Exception('Erreur réseau: ${response.statusCode}');
    }
    //do other code error if want
  }
}
