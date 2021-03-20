import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'news_data.dart';

class FeedScreen extends StatefulWidget {
  @override
  _FeedScreenState createState() => _FeedScreenState();
}

// initialise the variables I want to assign to elements to display on page
String title = '';
String description = '';

class _FeedScreenState extends State<FeedScreen> {
  // method to retrieve data from API call and setstate with the returned data
  void getData() async {
    try {
      var data = await News().getNewsData();
      setState(() {
        title = data[0]['description'];
      });
    } catch (e) {
      print(e);
    }
  }

  // call getData in initstate to have it get triggered when the page is built
  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    getData();
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
