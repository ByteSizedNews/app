import 'package:flutter/cupertino.dart';

Column articlePage(String imgUrl, String title, String summary) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      Flexible(
        flex: 4,
        child: Image.network(imgUrl),
      ),
      Flexible(
        flex: 1,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 10, 15, 6),
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
          ),
        ),
      ),
      Flexible(
        flex: 5,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15, 3, 15, 6),
          child: Text(
            summary,
            style: const TextStyle(
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
