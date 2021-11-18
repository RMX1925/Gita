import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:book_app/widgets/reading_card_list.dart';
import 'package:book_app/screens/details_screen.dart';
import 'package:flutter/services.dart';
import 'chapter_list.dart';

class ListStructure extends StatelessWidget {
  final String chapterName;
  final String verseCount;
  String chapterHeading;
  String chapterSummary;
  // final int chapterNumber;
  // final Function press;
  ListStructure({Key key, this.chapterName, this.verseCount})
      : super(key: key) {
    otherFunctio();
  }

  otherFunctio() async {
    this.chapterHeading = await loadHeading();
    this.chapterSummary = await loadSummary();
  }

  Future<String> loadSummary() async {
    String summaryFile =
        await rootBundle.loadString('assets/json/gitaSummary.json');
    var summaryData = jsonDecode(summaryFile);
    var chapter = summaryData[chapterName];
    var summary = chapter[0]['summary'];
    return summary;
  }

  Future<String> loadHeading() async {
    String summaryFile =
        await rootBundle.loadString('assets/json/gitaSummary.json');
    var summaryData = jsonDecode(summaryFile);
    var chapter = summaryData[chapterName];
    var heading = chapter[0]['tag'].toString().split(":")[1];
    return heading;
  }

  @override
  Widget build(BuildContext context) {
    return ReadingListCard(
      image: "assets/images/book-1.png",
      title: chapterName,
      auth: "Total Verses - $verseCount",
      rating: 4.9,
      pressDetails: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return DetailsScreen(
                  listStructure: ChapterInformation(
                      chapterName: chapterName,
                      chapterHeading: chapterHeading,
                      verseCount: int.parse(verseCount),
                      chapterSummary: chapterSummary));
            },
          ),
        );
      },
    );
  }
}
