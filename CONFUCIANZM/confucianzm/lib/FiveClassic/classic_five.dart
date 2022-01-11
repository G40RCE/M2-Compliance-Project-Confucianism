import 'package:confucianzm/FiveClassic/classic_four.dart';
import 'package:confucianzm/dashboard_menu.dart';
import 'package:flutter/material.dart';

class ClassicPage5 extends StatefulWidget {
  const ClassicPage5({Key? key}) : super(key: key);

  @override
  _ClassicPage5State createState() => _ClassicPage5State();
}

class _ClassicPage5State extends State<ClassicPage5> {
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
                title: Image.asset('assets/images/springandautumn_picture.jpg'),
              )),
              Card(
                  child: ListTile(
                title: Text('Spring and Autumn Annals'),
              )),
              Card(
                  child: ListTile(
                      title: Text(
                          'In which, has the chronicles period of time that gives its name, Spring and Autumn period (771–476 BCE) and these events emphasize the significance of collective memory for communal self-identification, for reanimating the old is the best way to attain the new.'))),
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
                      MaterialPageRoute(builder: (context) => ClassicPage4()),
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
                      MaterialPageRoute(builder: (context) => DashboardMenu()),
                    );
                  },
                ),
              ])
            ]),
          )
        ]));
  }
}
