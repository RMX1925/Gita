import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class VerseText extends StatefulWidget {
  String chapterName;
  int verse;
  final String partText;
  final TextStyle textStyle;
  final String normalText;
  final TextAlign alignText;
  VerseText(
      {Key key,
      this.chapterName,
      this.verse = 0,
      this.partText,
      this.textStyle,
      this.normalText,
      this.alignText})
      : super(key: key);

  @override
  _VerseTextState createState() => _VerseTextState(
      chapterName: chapterName,
      verse: verse,
      partText: partText,
      normalText: normalText,
      textStyle: textStyle,
      alignText: alignText);
}

class _VerseTextState extends State<VerseText> {
  String chapterName;
  int verse;
  final String partText;
  String data;
  String normalText;
  final TextStyle textStyle;
  final TextAlign alignText;
  _VerseTextState(
      {Key key,
      this.chapterName,
      this.normalText,
      this.verse = 0,
      this.partText,
      this.textStyle,
      this.alignText});

  Future<void> loadVerse() async {
    String summaryFile =
        await rootBundle.loadString('assets/json/gita.json', cache: true);

    var jsonData = jsonDecode(summaryFile);
    if (chapterName != null) {
      var gitaExtracts = jsonData[chapterName];
      var gitaExtract = gitaExtracts[verse];
      var dataExtract;
      if (partText == "verse")
        dataExtract = gitaExtract['verse_san'].toString();
      else if (partText == "trans")
        dataExtract = gitaExtract['verse_trans'].toString();
      else if (partText == "meaning")
        dataExtract = gitaExtract['commentary'].toString();
      else
        dataExtract = partText;

      if (dataExtract != partText)
        setState(() {
          data = dataExtract;
        });
    }
  }

  @override
  void initState() {
    super.initState();
    loadVerse();
  }

  @override
  Widget build(BuildContext context) {
    final textSize = Theme.of(context).textTheme.headline5;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: RichText(
        textAlign: alignText != null ? alignText : TextAlign.justify,
        text: TextSpan(
          style: textStyle == null ? textSize : textStyle,
          children: [
            TextSpan(
                text: normalText != null ? normalText : data,
                style: TextStyle(
                  fontWeight: textStyle == null
                      ? FontWeight.bold
                      : textStyle.fontWeight,
                )),
          ],
        ),
      ),
    );
  }
}
