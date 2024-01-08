// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SafeArea(
        child: Scaffold(
          body: Stack(
            children: [
              SizedBox(
                child: Container(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment:
                        CrossAxisAlignment.center, //يجيب النص كامل في النص
                    children: [
                      SizedBox(
                        height: 40,
                      ),
                      Text(
                        "Log in",
                        style: TextStyle(fontSize: 18, fontFamily: "myfont"),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Image.asset('assets/images/glow_guide_logo.png',
                          width: 222),
                      SizedBox(
                        //عشان اغير مكان البوكس ويصير بعيد عن الصوره اللي فوق
                        height: 1,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.purple[100],
                          borderRadius: BorderRadius.circular(66),
                        ),
                        width: 266,
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: TextField(
                          decoration: InputDecoration(
                              icon: Icon(
                                Icons.person,
                                color: Colors.purple[800],
                              ),
                              hintText: "Your Email :",
                              border: InputBorder.none),
                        ),
                      ),
                      SizedBox(
                        height: 23,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.purple[100],
                          borderRadius: BorderRadius.circular(66),
                        ),
                        width: 266,
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                              suffix: Icon(
                                Icons.visibility,
                                color: Colors.purple[900],
                              ),
                              icon: Icon(
                                Icons.lock,
                                color: Colors.purple[800],
                                size: 19,
                              ),
                              hintText: "Password :",
                              border: InputBorder.none),
                        ),
                      ),
                      SizedBox(
                        height: 17,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.purple),
                          padding: MaterialStateProperty.all(
                              EdgeInsets.symmetric(
                                  horizontal: 106, vertical: 10)),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(27))),
                        ),
                        child: Text(
                          "login",
                          style: TextStyle(fontSize: 24),
                        ),
                      ),
                      SizedBox(
                        height: 17,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Don't have an account? "),
                          GestureDetector(
                            //methode for the text to can press on in and open another window
                            onTap: () {
                              Navigator.pushNamed(context, "/signup");
                            },
                            child: Text(
                              " Sign up",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          /* SizedBox(
                            height: 17,
                          ),
                          Text("Contuine as "),
                          GestureDetector(
                            //methode for the text to can press on in and open another window
                            onTap: () {
                              Navigator.pushNamed(context, "/home");
                            },
                            child: Text(
                              " Guest",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),*/
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 0,
                left: 0,
                child: Image.asset(
                  'assets/images/main_top.png',
                  width: 170,
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: Image.asset(
                  'assets/images/login_bottom.png',
                  width: 100,
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
