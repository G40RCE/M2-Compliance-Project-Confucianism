import 'package:confucianzm/FiveClassic/classic_one.dart';
import 'package:confucianzm/FiveClassic/classic_three.dart';
import 'package:flutter/material.dart';

class ClassicPage2 extends StatefulWidget {
  const ClassicPage2({Key? key}) : super(key: key);

  @override
  _ClassicPage2State createState() => _ClassicPage2State();
}

class _ClassicPage2State extends State<ClassicPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFFBCE14),
          title: Text('Classics'),
          centerTitle: true,
          automaticallyImplyLeading: false,
        ),
        body: ListView(children: <Widget>[
          SingleChildScrollView(
            child: Column(children: [
              Card(
                  child: ListTile(
                title: Image.asset('assets/images/classicofpoetry_picture.jpg'),
              )),
              Card(
                  child: ListTile(
                title: Text('Classic of Poetry / Book of Songs'),
              )),
              Card(
                  child: ListTile(
                      title: Text(
                          'is the earliest anthology of Chinese poems and songs was originated from Confucianism. It shows the poetic vision in the belief that poetry and music convey common human feelings and mutual responsiveness.'))),
              SizedBox(
                height: 5,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: <
                  Widget>[
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
                      MaterialPageRoute(builder: (context) => ClassicPage()),
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
                      MaterialPageRoute(builder: (context) => ClassicPage3()),
                    );
                  },
                ),
              ])
            ]),
          )
        ]));
  }
}
