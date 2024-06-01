import 'package:flutter/material.dart';
import 'package:news_app/controller/fetchNews.dart';
import 'package:news_app/view/widgets/newsContainer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    FetchNews.fetchNews();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView.builder(
      scrollDirection: Axis.vertical,
      controller: PageController(initialPage: 0),
      itemCount: 10,
      itemBuilder: (context, index) {
        FetchNews.fetchNews();
        return NewsContainer(
            imgUrl:
                "https://unsplash.com/photos/a-person-is-casting-a-vote-into-a-box-T9CXBZLUvic",
            newsHeading: "Election 2024",
            newsContent:
                "The Congress has decided not to participate in any Lok Sabha exit poll debates on television channels and said it does not want to indulge in speculation and slugfest for TRP. Congress spokesperson and media department chairperson Pawan Khera said the voters have cast their votes and their verdict has been secured.",
            newsDescrition: "Election 2024",
            newsUrl:
                "https://www.thehindu.com/elections/lok-sabha/india-general-elections-2024-live-updates-june-1/article68236677.ece");
      },
    ));
  }
}
