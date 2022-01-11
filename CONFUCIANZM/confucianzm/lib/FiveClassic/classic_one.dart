import 'package:confucianzm/FiveClassic/classic_two.dart';
import 'package:confucianzm/dashboard_menu.dart';
import 'package:flutter/material.dart';

class ClassicPage extends StatefulWidget {
  const ClassicPage({Key? key}) : super(key: key);

  @override
  _ClassicPageState createState() => _ClassicPageState();
}

class _ClassicPageState extends State<ClassicPage> {
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
                title: Image.asset('assets/images/iching_picture.jpg'),
              )),
              Card(
                  child: ListTile(
                title: Text('I Ching / Book of Changes'),
              )),
              Card(
                  child: ListTile(
                      title: Text(
                          'it is a generally held to be the earliest of the classics, it shows a metaphysical vision which combines divinatory art with numerological technique and ethical insight. The philosophy of change sees cosmos as interaction between the two energies yin and yang into an exotic sign. The universe always shows organismic unity and dynamism.'))),
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
                      MaterialPageRoute(builder: (context) => ClassicPage2()),
                    );
                  },
                ),
              ])
            ]),
          )
        ]));
  }
}
