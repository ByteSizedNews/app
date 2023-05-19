import 'package:bytesized/components/card.dart';
import 'package:bytesized/controllers/article.controller.dart';
import 'package:bytesized/models/article.model.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Byte Sized',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Article> articles = [];
  FutureBuilder<List<Article>> futureBuilder = FutureBuilder<List<Article>>(
    future: fetchArticle(),
    builder: (context, snapshot) {
      if (snapshot.hasData) {
        return articlePage(snapshot.data![0].image_url, snapshot.data![0].name,
            snapshot.data![0].data);
      } else if (snapshot.hasError) {
        return Text('${snapshot.error}');
      }
      return const CircularProgressIndicator();
    },
  );
  @override
  Widget build(BuildContext context) {
    fetchArticle()
        .then((value) {
          setState(() {
            articles = value;
          });
        })
        .catchError((error) => null)
        .whenComplete(() => null);

    return Scaffold(
      body: PageView.builder(
          itemCount: articles.length,
          scrollDirection: Axis.vertical,
          itemBuilder: (BuildContext context, int index) {
            return articlePage(articles[index].image_url, articles[index].name,
                articles[index].data);
          }),
    );
  }

  // ignore: non_constant_identifier_names

}
