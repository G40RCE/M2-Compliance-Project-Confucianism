import 'package:confucianzm/main_dashboard.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // Text controllers use to identity the details.
  TextEditingController _password = TextEditingController();
  TextEditingController username = TextEditingController();

  GlobalKey<FormState> _InputForm = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFFEEB61),
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 60, horizontal: 25),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(bottom: 40),
                  child: Text(
                    'Welcome to Confucianism!',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 50,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(
                  height: 75,
                ),
                Container(
                  width: double.infinity,
                  alignment: Alignment.centerRight,
                  padding: EdgeInsets.only(bottom: 40),
                  child: Text(
                    'Sign In',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 50,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Form(
                  key: _InputForm,
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(bottom: 20),
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(40),
                            ),
                            hintStyle: TextStyle(color: Colors.black),
                            hintText: 'Username',
                            fillColor: Color(0xFFE7E6E8),
                            filled: true,
                          ),
                          cursorColor: Colors.black,
                          controller: username,
                          validator: (data) {
                            if (data == null || data.isEmpty) {
                              return '';
                            }
                            if (username.text != 'admin') {
                              return '';
                            }
                            return null;
                          },
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 20),
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(40),
                            ),
                            hintStyle: TextStyle(color: Colors.black),
                            hintText: 'Password',
                            fillColor: Color(0xFFE7E6E8),
                            filled: true,
                          ),
                          // make the validator password secured, no bypass the app
                          cursorColor: Colors.black,
                          obscureText: true,
                          controller: _password,
                          validator: (data) {
                            if (data == null || data.isEmpty) {
                              return '';
                            }
                            if (data.length < 4 || data.length > 16) {
                              return '';
                            }
                            if (_password.text != 'admin') {
                              return '';
                            }
                            return null;
                          },
                        ),
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            TextButton(
                              child: const Text('Login'),
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
                                if (_InputForm.currentState!.validate()) {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            MainDashboardPage()),
                                  );
                                } else {
                                  // showing the snackbar, if the user fails to enter invalid information provided.
                                  const Message = SnackBar(
                                      content: Text(
                                          "Incorrect username and password."));
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(Message);
                                }
                              },
                            ),
                          ]),
                      SizedBox(
                        height: 40,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
