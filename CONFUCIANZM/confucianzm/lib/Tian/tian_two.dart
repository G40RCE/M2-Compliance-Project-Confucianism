import 'package:confucianzm/Tian/tian.dart';
import 'package:confucianzm/dashboard_menu.dart';
import 'package:flutter/material.dart';

class TianPage2 extends StatefulWidget {
  const TianPage2({Key? key}) : super(key: key);

  @override
  _TianPage2State createState() => _TianPage2State();
}

class _TianPage2State extends State<TianPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFFBCE14),
          title: Text('Tian'),
          centerTitle: true,
          automaticallyImplyLeading: false,
        ),
        body: ListView(children: <Widget>[
          SingleChildScrollView(
            child: Column(children: [
              Card(
                  child: ListTile(
                title: Image.asset('assets/images/tian_picture.png'),
              )),
              Card(
                  child: ListTile(
                title: Text('About History of Tian'),
              )),
              Card(
                  child: ListTile(
                      title: Text(
                          'Tiān (天) is one of the oldest Chinese terms for heaven and a key concept in Chinese mythology, philosophy, and religion. During the Shang dynasty (17th―11th century BCE), the Chinese referred to their supreme god as Shàngdì (上帝, "Lord on High") or Dì (帝,"Lord"). During the following Zhou dynasty, Tiān became synonymous with this figure. Before the 20th century Heaven worship was an orthodox state religion of China.'))),
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
                          MaterialPageRoute(builder: (context) => TianPage()),
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
