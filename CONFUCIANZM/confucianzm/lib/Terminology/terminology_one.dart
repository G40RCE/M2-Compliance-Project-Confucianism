import 'package:confucianzm/Terminology/terminology_two.dart';
import 'package:confucianzm/dashboard_menu.dart';
import 'package:flutter/material.dart';

class TerminologyPage extends StatefulWidget {
  const TerminologyPage({Key? key}) : super(key: key);

  @override
  _TerminologyPageState createState() => _TerminologyPageState();
}

class _TerminologyPageState extends State<TerminologyPage> {
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
                title: Image.asset('assets/images/rujia_symbol.png'),
              )),
              Card(
                  child: ListTile(
                title: Text('Ru jia'),
              )),
              Card(
                  child: ListTile(
                      title: Text(
                          'Ru stands for as a “scholar,” and thus the Ru jia is quite understandable description for the Western term “Confucianism” and can be translated as the “School of the Learned.” In which, that consider as education. But the Ru jia is a more accurate description of the Confucian tradition because, unlike what the name suggests, “Confucianism” draws from a tradition that precedes Kongzi. This tradition includes Kongzi as one of its followers, rather than as its founder.'))),
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
                              builder: (context) => DashboardMenu()),
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
                              builder: (context) => TerminologyPage2()),
                        );
                      },
                    ),
                  ])
            ]),
          )
        ]));
  }
}
