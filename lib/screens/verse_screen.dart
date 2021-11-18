import 'package:book_app/widgets/verse_text.dart';
import 'package:flutter/material.dart';

class VerseScreen extends StatelessWidget {
  const VerseScreen({Key key, this.chapterName, this.verse}) : super(key: key);
  final String chapterName;
  final int verse;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/main_page_bg.png"),
                alignment: Alignment.topCenter,
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: size.height * 0.1),
                Center(
                  widthFactor: size.width,
                  child: VerseText(
                    chapterName: chapterName,
                    verse: verse,
                    partText: "verse",
                    alignText: TextAlign.center,
                  ),
                ),
                SizedBox(height: size.height * 0.1),
                VerseText(
                  normalText: "Translation",
                  textStyle: TextStyle(fontSize: 18, color: Colors.grey),
                ),
                SizedBox(
                  height: 10,
                ),
                VerseText(
                    chapterName: chapterName,
                    verse: verse,
                    partText: "trans",
                    textStyle: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                        color: Colors.black)),
                SizedBox(height: 30),
                VerseText(
                  normalText: "Meaning",
                  textStyle: TextStyle(fontSize: 18, color: Colors.grey),
                ),
                SizedBox(
                  height: 10,
                ),
                VerseText(
                    chapterName: chapterName,
                    verse: verse,
                    partText: "meaning",
                    textStyle: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                        color: Colors.black)),
                SizedBox(
                  height: 15,
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
