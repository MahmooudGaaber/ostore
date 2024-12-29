import 'dart:convert';

import 'package:http/http.dart' as http;

class OstoreHttpClient {
  static const String baseUrl = 'https://fakestoreapi.com/products';

//helper function to get data from api
  static Future<Map<String, dynamic>> get(String endPoint,
      {Map<String, dynamic>? queryParams}) async {
    final response = await http.get(Uri.parse(baseUrl + endPoint));
    return _handleResponse(response);
  }

  //helper function to post data to api
  static Future<Map<String, dynamic>> post(
      String endPoint, Map<String, dynamic> body) async {
    final response = await http.post(
      Uri.parse(baseUrl + endPoint),
      body: jsonEncode(body),
      headers: {
        'Content-Type': 'application/json',
      },
    );
    return _handleResponse(response);
  }

  //helper function to put data to api
  static Future<Map<String, dynamic>> put(
      String endPoint, Map<String, dynamic> body) async {
    final response = await http.put(
      Uri.parse(baseUrl + endPoint),
      body: jsonEncode(body),
      headers: {
        'Content-Type': 'application/json',
      },
    );
    return _handleResponse(response);
  }

  //handle response
  static Map<String, dynamic> _handleResponse(http.Response response) {
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Failed to load data : ${response.statusCode}');
    }
  }
}
