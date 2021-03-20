import 'package:flutter/material.dart';
import 'package:flutter_news/dummy_data.dart';

class Article extends StatefulWidget {
  // initialized variable to hold data being passed from feed.dart in navigator
  Article({this.articleContent});
  final String articleContent;
  @override
  _ArticleState createState() => _ArticleState();
}

class _ArticleState extends State<Article> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AppBar'),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                // can access the variable holding the article content with the widget object
                widget.articleContent,
                textAlign: TextAlign.justify,
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
