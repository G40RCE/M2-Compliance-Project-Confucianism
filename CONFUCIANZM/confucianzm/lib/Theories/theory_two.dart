import 'package:confucianzm/Theories/theory_one.dart';
import 'package:confucianzm/dashboard_menu.dart';
import 'package:flutter/material.dart';

class TheoryPage2 extends StatefulWidget {
  const TheoryPage2({Key? key}) : super(key: key);

  @override
  _TheoryPage2State createState() => _TheoryPage2State();
}

class _TheoryPage2State extends State<TheoryPage2> {
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
                title: Text('Confucian Political Theories - Cont.'),
              )),
              Card(
                  child: ListTile(
                      title: Text(
                          'This theory belief that has the state was the moral guardian of the people was reflected in a number of institutions. Most important about this theories, among these was the merit bureaucracy, or civil service, in which all officials were to be selected for their moral qualities, qualities that would enable them not only to govern, but to set a moral example that would transform the people. Because Confucianism was a moral system, the Confucian classics had to be mastered by prospective officials. Official position and examination degree, not wealth or business acumen, were universally recognized marks of status.'))),
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
                          MaterialPageRoute(builder: (context) => TheoryPage()),
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
                              builder: (context) => DashboardMenu()),
                        );
                      },
                    ),
                  ])
            ]),
          )
        ]));
  }
}
