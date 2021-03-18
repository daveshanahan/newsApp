import 'dart:convert';
import 'package:http/http.dart' as http;

// https://newsapi.org/v2/top-headlines?sources=bbc-news&apiKey=API_KEY

class News {
  Future getNewsData() async {
    Uri url = Uri.https('newsapi.org', 'v2/top-headlines',
        {'sources': 'bbc-news', 'apiKey': '4fe731accdf142528d9b5d86cb35601e'});
    http.Response response = await http.get(url);

    if (response.statusCode == 200) {
      String data = response.body;
      var decodedData = jsonDecode(data);
      var articles = decodedData['articles'];
      var title = decodedData['articles'][0]['title'];
      return title;
    } else {
      print(response.statusCode);
      throw 'problem with GET request';
    }
  }
}
