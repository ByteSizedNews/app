import 'dart:convert';

import 'package:app/env/env.dart' as env;
import 'package:app/models/article.model.dart';
import 'package:http/http.dart' as http;

Future<List<Article>> fetchArticle() async {
  final response = await http.get(Uri.parse(env.apiURL));

  Iterable list = jsonDecode(response.body);

  return list.map((model) => Article.fromJson(model)).toList();
}
//https://picsum.photos/700/500