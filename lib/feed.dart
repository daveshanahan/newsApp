import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'news_data.dart';
import 'dummy_data.dart';
import 'article.dart';

class FeedScreen extends StatefulWidget {
  @override
  _FeedScreenState createState() => _FeedScreenState();
}

//articles[0].title
// initialise the variables I want to assign to elements to display on page
String leading = '';
String title = '';
String subtitle = '';
String description = '';

class _FeedScreenState extends State<FeedScreen> {
  // method to retrieve data from API call and setstate with the returned data
  // void getData() async {
  //   try {
  //     var data = await News().getNewsData();
  //     setState(() {
  //       title = data[2][0]['title'];
  //       leading = data[2][0]['urlToImage'];
  //       subtitle = data[2][0]['description'];
  //     });
  //   } catch (e) {
  //     print(e);
  //   }
  // }

  // call getData in initstate to have it get triggered when the page is built
  @override
  void initState() {
    super.initState();
    // getData();
  }

  @override
  Widget build(BuildContext context) {
    // getData();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('AppBar'),
      ),
      body: Center(
        child: ListView.builder(
          // create list with length of articles list returned
          itemCount: FakeNews.articles.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              color: Colors.grey,
              clipBehavior: Clip.antiAlias,
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.article),
                    title: Text(
                      FakeNews.articles[0]['title'],
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      FakeNews.articles[0]['title'],
                      style: TextStyle(color: Colors.black.withOpacity(0.6)),
                    ),
                  ),
                  ButtonBar(
                    alignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        // textColor: const Color(0xFF6200EE),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                // after defining variable in Article() we can assign it a value here
                                return Article(
                                  articleContent: FakeNews.articles[0]
                                      ['content'],
                                );
                              },
                            ),
                          );
                        },
                        child: const Text(
                          'READ MORE',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Image.network(FakeNews.articles[0]['imageUrl']),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
