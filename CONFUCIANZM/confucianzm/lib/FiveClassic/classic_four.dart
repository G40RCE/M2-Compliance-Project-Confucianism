import 'package:confucianzm/FiveClassic/classic_five.dart';
import 'package:confucianzm/FiveClassic/classic_three.dart';
import 'package:flutter/material.dart';

class ClassicPage4 extends StatefulWidget {
  const ClassicPage4({Key? key}) : super(key: key);

  @override
  _ClassicPage4State createState() => _ClassicPage4State();
}

class _ClassicPage4State extends State<ClassicPage4> {
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
                title: Image.asset('assets/images/bookofrites_picture.jpg'),
              )),
              Card(
                  child: ListTile(
                title: Text('Book of Rites'),
              )),
              Card(
                  child: ListTile(
                      title: Text(
                          'that personally describes the social forms, administration, and ceremonial rites of the Zhou Dynasty. This social vision defined society not as an adversarial system based on contractual relations but as a community of trust based on social responsibility. The four functional occupations are cooperative (farmer, scholar, artisan, merchant).'))),
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
                      MaterialPageRoute(builder: (context) => ClassicPage3()),
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
                      MaterialPageRoute(builder: (context) => ClassicPage5()),
                    );
                  },
                ),
              ])
            ]),
          )
        ]));
  }
}
