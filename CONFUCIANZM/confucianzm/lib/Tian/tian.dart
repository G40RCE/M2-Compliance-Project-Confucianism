import 'package:confucianzm/Tian/tian_two.dart';
import 'package:confucianzm/dashboard_menu.dart';
import 'package:flutter/material.dart';

class TianPage extends StatefulWidget {
  const TianPage({Key? key}) : super(key: key);

  @override
  _TianPageState createState() => _TianPageState();
}

class _TianPageState extends State<TianPage> {
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
                          'The concept of Heaven (Tian, 天) is pervasive in Confucianism. Confucius had a deep trust in Heaven and believed that Heaven overruled human efforts. He also believed that he was carrying out the will of Heaven, and that Heaven would not allow its servant, Confucius, to be killed until his work was done.'))),
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
                          MaterialPageRoute(builder: (context) => TianPage2()),
                        );
                      },
                    ),
                  ])
            ]),
          )
        ]));
  }
}
