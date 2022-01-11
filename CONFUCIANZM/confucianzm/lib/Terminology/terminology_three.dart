import 'package:confucianzm/Terminology/terminology_four.dart';
import 'package:confucianzm/Terminology/terminology_two.dart';
import 'package:flutter/material.dart';

class TerminologyPage3 extends StatefulWidget {
  const TerminologyPage3({Key? key}) : super(key: key);

  @override
  _TerminologyPage3State createState() => _TerminologyPage3State();
}

class _TerminologyPage3State extends State<TerminologyPage3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFFBCE14),
          title: Text('Terminology'),
          centerTitle: true,
          automaticallyImplyLeading: false,
        ),
        body: ListView(children: <Widget>[
          SingleChildScrollView(
            child: Column(children: [
              Card(
                  child: ListTile(
                title: Image.asset('assets/images/ren_symbol.png'),
              )),
              Card(
                  child: ListTile(
                title: Text('Ren'),
              )),
              Card(
                  child: ListTile(
                      title: Text(
                          'This translates as "benevolence", "perfect virtue", "goodness" or even "human-heartedness". The character itself is composed of the element meaning “man or person” and “two” and, along with li, is one of the central concepts in Confucianism. Ren refers to humanity, or human nature. '))),
              SizedBox(
                height: 5,
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    TextButton(
                      child: const Text('Prev'),
                      style: TextButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        backgroundColor: Color(0xFFFBCE14),
                        primary: Colors.black,
                        textStyle: const TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                        ),
                        minimumSize: Size(150, 40),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TerminologyPage2()),
                        );
                      },
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    TextButton(
                      child: const Text('Next'),
                      style: TextButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        backgroundColor: Color(0xFFFBCE14),
                        primary: Colors.black,
                        textStyle: const TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                        ),
                        minimumSize: Size(150, 40),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TerminologyPage4()),
                        );
                      },
                    ),
                  ])
            ]),
          )
        ]));
  }
}
