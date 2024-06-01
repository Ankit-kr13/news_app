//
import 'dart:convert';
import 'dart:math';
import 'package:http/http.dart';

class FetchNews {
  static List sourcesId = [
    "abc-news",
    "bbc-news",
    "bbc-sport",
    "business-insider",
    "engadget",
    "entertainment-weekly",
    "espn",
    "espn-cric-info",
    "financial-post",
    "fox-news",
    "fox-sports",
    "globo",
    "google-news",
    "google-news-in",
    "medical-news-today",
    "national-geographic",
    "news24",
    "new-scientist",
    "new-york-magazine",
    "next-big-future",
    "techcrunch",
    "techradar",
    "the-hindu",
    "the-wall-street-journal",
    "the-washington-times",
    "time",
    "usa-today",
  ];
  static fetchNews() async {
    final _random = new Random();
    var element = sourcesId[_random.nextInt(sourcesId.length)];
    Response response = await get(
      Uri.parse(
          "https://newsapi.org/v2/top-headlines?sources=$element&apiKey=27671238c029490b955c7baa30e40b17"),
    );

    Map body_data = jsonDecode(response.body);
    List articles = body_data["articles"];
    print(body_data);

    final _newRandom = new Random();
    var myElement = articles[_random.nextInt(articles.length)];
  }
}
