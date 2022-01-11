import 'package:confucianzm/FiveClassic/classic_four.dart';
import 'package:confucianzm/FiveClassic/classic_two.dart';
import 'package:flutter/material.dart';

class ClassicPage3 extends StatefulWidget {
  const ClassicPage3({Key? key}) : super(key: key);

  @override
  _ClassicPage3State createState() => _ClassicPage3State();
}

class _ClassicPage3State extends State<ClassicPage3> {
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
                title: Image.asset('assets/images/bookofdoc_picture.jpg'),
              )),
              Card(
                  child: ListTile(
                title: Text('Book of Documents'),
              )),
              Card(
                  child: ListTile(
                      title: Text(
                          'It has speeches of major figures and records of events in ancient times embodies the political vision and addresses the kingly way in terms of the ethical foundation for humane government. The documents show the sagacity, filial piety, and work ethic of Yao, Shun, and Yu. They established a political culture which was based on responsibility and trust. Their virtue formed a covenant of social harmony which did not depend on punishment or coercion.'))),
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
                      MaterialPageRoute(builder: (context) => ClassicPage2()),
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
                      MaterialPageRoute(builder: (context) => ClassicPage4()),
                    );
                  },
                ),
              ])
            ]),
          )
        ]));
  }
}
