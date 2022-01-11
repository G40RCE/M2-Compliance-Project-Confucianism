import 'package:confucianzm/Terminology/terminology_one.dart';
import 'package:confucianzm/Terminology/terminology_three.dart';
import 'package:flutter/material.dart';

class TerminologyPage2 extends StatefulWidget {
  const TerminologyPage2({Key? key}) : super(key: key);

  @override
  _TerminologyPage2State createState() => _TerminologyPage2State();
}

class _TerminologyPage2State extends State<TerminologyPage2> {
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
                title: Image.asset('assets/images/li_symbol.png'),
              )),
              Card(
                  child: ListTile(
                title: Text('Li'),
              )),
              Card(
                  child: ListTile(
                      title: Text(
                          'Confucianism emphasizes and understands the importance of virtuous rule through benevolence and proper conduct. This proper conduct is called li, or ritual, and emphasizes purity, sincerity, and harmony. If people were all virtuous and conducted themselves properly, Heaven bestowed good fortune upon everyone.'))),
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
                              builder: (context) => TerminologyPage()),
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
                              builder: (context) => TerminologyPage3()),
                        );
                      },
                    ),
                  ])
            ]),
          )
        ]));
  }
}
