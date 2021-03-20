import 'dart:convert';
import 'package:http/http.dart' as http;
import 'constants.dart';

// https://newsapi.org/v2/top-headlines?sources=bbc-news&apiKey=API_KEY

//totalResults

// class News {
//   Future getNewsData() async {
//     Uri url = Uri.https('newsapi.org', 'v2/top-headlines',
//         {'sources': 'bbc-news', 'apiKey': kApiKey});
//     http.Response response = await http.get(url);
//
//     if (response.statusCode == 200) {
//       String data = response.body;
//       var decodedData = jsonDecode(data);
//       // var numResults = decodedData['totalResults'];
//       // var articles = decodedData['articles'];
//       // var title = decodedData['articles'][0]['title'];
//       return decodedData;
//     } else {
//       print(response.statusCode);
//       throw 'problem with GET request';
//     }
//   }
// }
