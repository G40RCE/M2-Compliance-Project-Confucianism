import 'dart:io';

import 'package:confucianzm/dashboard_menu.dart';
import 'package:flutter/material.dart';

class MainDashboardPage extends StatefulWidget {
  const MainDashboardPage({Key? key}) : super(key: key);

  @override
  _MainDashboardPageState createState() => _MainDashboardPageState();
}

class _MainDashboardPageState extends State<MainDashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Color(0xFFFBCE14),
            title: Text('Confucianism'),
            centerTitle: true,
            leading: IconButton(
                icon: const Icon(Icons.cancel_outlined, color: Colors.white),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text("Quit"),
                        content: Text("Are you sure you want to exit the app?"),
                        actions: [
                          FlatButton(
                              onPressed: () => exit(0), child: Text("Ok")),
                          FlatButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text("Cancel")),
                        ],
                      );
                    },
                  );
                })),
        body: ListView(children: <Widget>[
          SingleChildScrollView(
            child: Column(children: [
              Card(
                  child: ListTile(
                title: Image.asset('assets/images/confucianism_symbol.jpg'),
              )),
              Card(
                  child: ListTile(
                title: Text('Confucianism'),
              )),
              Card(
                  child: ListTile(
                      title: Text(
                          'also known as Ruism, is a system of thought and behavior originating from ancient China. Variously described as tradition, which is a philosophy, a religion, a humanistic or rationalistic religion, a way of governing, or simply the way of life.'))),
              SizedBox(
                height: 30,
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
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
