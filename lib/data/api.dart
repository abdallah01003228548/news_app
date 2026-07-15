import 'dart:convert';

import 'package:http/http.dart' as http;

abstract class Api {
  //GET https://newsapi.org/v2/everything?q=bitcoin&apiKey=d63f1e28b9334ce7afcfe80f366c7230

  static Future<Map<String, dynamic>>  getData() async {
    Uri url = Uri.https("newsapi.org", "/v2/everything", {
      'q': 'bitcoin',
      'apiKey': 'd63f1e28b9334ce7afcfe80f366c7230',
    });

    var response = await http.get(url);
    var responseBody = response.body;
    Map<String, dynamic> json = jsonDecode(responseBody);
    return json;
  }
}
