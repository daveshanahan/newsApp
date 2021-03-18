import 'package:flutter/material.dart';
import 'news_data.dart';

class FeedScreen extends StatefulWidget {
  @override
  _FeedScreenState createState() => _FeedScreenState();
}

String title = '';
String description = '';

class _FeedScreenState extends State<FeedScreen> {
  void getData() async {
    try {
      var data = await News().getNewsData();
      setState(() {
        title = data;
      });
    } catch (e) {
      print(e);
    }
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('AppBar'),
      ),
      body: Center(
        child: Text(
          title,
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
