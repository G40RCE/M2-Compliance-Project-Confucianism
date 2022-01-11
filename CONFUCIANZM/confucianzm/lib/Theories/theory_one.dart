import 'package:confucianzm/Theories/theory_two.dart';
import 'package:confucianzm/dashboard_menu.dart';
import 'package:flutter/material.dart';

class TheoryPage extends StatefulWidget {
  const TheoryPage({Key? key}) : super(key: key);

  @override
  _TheoryPageState createState() => _TheoryPageState();
}

class _TheoryPageState extends State<TheoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFFBCE14),
          title: Text('Theories'),
          centerTitle: true,
          automaticallyImplyLeading: false,
        ),
        body: ListView(children: <Widget>[
          SingleChildScrollView(
            child: Column(children: [
              Card(
                  child: ListTile(
                title: Text('Confucian Political Theories'),
              )),
              Card(
                  child: ListTile(
                      title: Text(
                          'The Confucian political theory emphasized conflict resolution through mediation, rather than through the application of abstract rules to establish right and wrong in order to achieve social harmony.'))),
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
                      MaterialPageRoute(builder: (context) => DashboardMenu()),
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
                      MaterialPageRoute(builder: (context) => TheoryPage2()),
                    );
                  },
                ),
              ])
            ]),
          )
        ]));
  }
}
