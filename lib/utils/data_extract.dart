import 'dart:convert';
import 'package:flutter/services.dart';

class VerseDetails {
  String verse;
  String translation;
  String meaning;
  VerseDetails({this.verse, this.translation, this.meaning});
}

class DataExtractor {
  String verse;
  String chapterName;
  DataExtractor({this.chapterName, this.verse});

  Future<VerseDetails> loadGita() async {
    String summaryFile = await rootBundle.loadString('assets/json/gita.json');
    var jsonData = jsonDecode(summaryFile);
    int verseCode = int.parse(verse) - 1;
    var gitaExtracts = jsonData[chapterName.toLowerCase()];
    var gitaExtract = gitaExtracts[verseCode];
    var verseText = gitaExtract['verse_san'].toString();
    var translation = gitaExtract['verse_trans'].toString();
    var meaning = gitaExtract['commentary'].toString();
    return VerseDetails(
        verse: verseText, translation: translation, meaning: meaning);
  }

  VerseDetails getVerse() {
    VerseDetails detailData;
    loadGita().then((value) => detailData = value);
    return detailData;
  }
}
