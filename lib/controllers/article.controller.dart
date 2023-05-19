import 'dart:convert';

import 'package:bytesized/env/env.dart' as env;
import 'package:bytesized/models/article.model.dart';
import 'package:http/http.dart' as http;

Future<List<Article>> fetchArticle() async {
  try {
    final response = await http.get(Uri.parse(env.apiURL));
    switch (response.statusCode) {
      case 200:
        Iterable list = jsonDecode(response.body);
        return list.map((model) => Article.fromJson(model)).toList();
      case 404:
        throw Exception('Not Found');
      default:
        throw Exception('Error');
    }
  } catch (e) {
    throw Exception(e.toString());
  }
}
//https://picsum.photos/700/500