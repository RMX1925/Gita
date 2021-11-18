import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'list_structure.dart';

class ChapterInformation {
  String chapterName;
  String chapterHeading;
  int verseCount;
  String chapterSummary;

  ChapterInformation(
      {this.chapterName,
      this.chapterHeading,
      this.verseCount,
      this.chapterSummary});
}

class ChapterList {
  List<Widget> chapterShow = [
    SizedBox(
      width: 30,
    ),
    SizedBox(
      width: 30,
    ),
  ];

  List<Widget> chapterList = <Widget>[
    ListStructure(
      chapterName: "Chapter 1",
      verseCount: "47",
      // chapterHeading: "Lamenting the Consequences of War",
    ),
    ListStructure(
      chapterName: "Chapter 2",
      verseCount: "72",
      // chapterHeading: "The Yog of Analytical Knowledge",
    ),
    ListStructure(
      chapterName: "Chapter 3",
      verseCount: "43",
      // chapterHeading: "The Yog of Action",
    ),
    ListStructure(
      chapterName: "Chapter 4",
      verseCount: "42",
      // chapterHeading: "The Yog of Knowledge and the Disciplines of Action",
    ),
    ListStructure(
      chapterName: "Chapter 5",
      verseCount: "29",
      // chapterHeading: "The Yog of Renunciation",
    ),
    ListStructure(
      chapterName: "Chapter 6",
      verseCount: "47",
      // chapterHeading: "The Yog of Meditaiton",
    ),
    ListStructure(
      chapterName: "Chapter 7",
      verseCount: "30",
      // chapterHeading: "The Yog through the Realization of Divine Knowledge"
    ),
    ListStructure(
      chapterName: "Chapter 8",
      verseCount: "28",
      // chapterHeading: "The Yog of the Eternal God"
    ),
    ListStructure(
      chapterName: "Chapter 9",
      verseCount: "34",
      // chapterHeading: "Yog through the King of Sciences",
    ),
    ListStructure(
      chapterName: "Chapter 10",
      verseCount: "42",
      // chapterHeading: "Yog through Appreciating the Infinite Opulences of God",
    ),
    ListStructure(
      chapterName: "Chapter 11",
      verseCount: "55",
      // chapterHeading: "Yog through Beholding the Cosmic Form of God",
    ),
    ListStructure(
      chapterName: "Chapter 12",
      verseCount: "20",
      // chapterHeading: "The Yog of Devotion",
    ),
    ListStructure(
      chapterName: "Chapter 13",
      verseCount: "35",
      // chapterHeading:
      // "Yog through Distinguishing the Field and the Knower of the Field",
    ),
    ListStructure(
      chapterName: "Chapter 14",
      verseCount: "27",
      // chapterHeading:
      // "Yog through Understanding the Three Modes of Material Nature",
    ),
    ListStructure(
      chapterName: "Chapter 15",
      verseCount: "20",
      // chapterHeading: "The Yog of the Supreme Divine Personality",
    ),
    ListStructure(
      chapterName: "Chapter 16",
      verseCount: "24",
      // chapterHeading: "Yog through Discerning the Divine and Demoniac Natures",
    ),
    ListStructure(
      chapterName: "Chapter 17",
      verseCount: "25",
      // chapterHeading: "Yog through Discerning the Three Devisions of Faith",
    ),
    ListStructure(
      chapterName: "Chapter 18",
      verseCount: "75",
      // chapterHeading:
      // "Yog through the Perfection of Renunciation and Surrender"
    ),
  ];
}
