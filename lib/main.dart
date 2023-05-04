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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          itemCount: 5,
          scrollDirection: Axis.vertical,
          itemBuilder: (BuildContext context, int index) {
            return Card();
          }),
    );
  }

  // ignore: non_constant_identifier_names
  Column Card() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          flex: 4,
          child: Image.network('https://picsum.photos/700/500'),
        ),
        const Flexible(
          flex: 6,
          child: Padding(
            padding: EdgeInsets.all(17.0),
            child: Text(
              'I am now in my late 30s and started to learn to code around the age of 12, in 1996. My professional career as a software engineer took off in the early 2000s when I started working for a local software company. Only aged 17 when I started programming professionally and in a commercial environment, I was the youngest guy a around. I was a kid. A kid with a massive passion for computers, networks and programming.My boomer colleagues taught me essential hard and soft skills back in the days. I consider them my mentors to this date. With many of them I am good friends besides the age difference. With some of them Ive lost contact for years now. All of them have taught me valuable lessons which I want to share with you. Especially with those of you who did not have had the chance to work with them. When I was 17 years old, they were in their late 30s and early 40s. Pretty much the age I am in now. Many of the boomer developers have already retired or are in the phase of retiring now and I somewhat fear that some of their legacy might get lost in time.',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 123, 123, 123),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
