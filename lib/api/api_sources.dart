import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:newssssssssss/model/SourcesResponse.dart';
////https://newsapi.org/v2/top-headlines/sources?
import '../model/NewsResponse.dart';
class ApiManger {
  static const String baseUrl = 'newsapi.org';
  static const String apiKey = '12c3fa854fcc4bcaa5f30efdd4e57f50';

  static Future<SourcesResponse> getSources(String categoryId) async {
    var url = Uri.https(baseUrl,
        '/v2/top-headlines/sources',
        {
          'apiKey': apiKey,
          'category': categoryId
        });
    var response = await http.get(url);
    return SourcesResponse.fromJson(jsonDecode(response.body));
  }

  static Future<NewsResponse> getNews(String sourceId)async{
    var url = Uri.https(baseUrl, 'v2/everything', {
      'apiKey': apiKey,
      'category': sourceId
    });
    var response = await http.get(url);
    return NewsResponse.fromJson(jsonDecode(response.body));
  }
}
