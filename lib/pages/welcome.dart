// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
                      "Welcome to Glow Guide",
                      style: TextStyle(fontSize: 18, fontFamily: "myfont"),
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    Image.asset('assets/images/glow_guide_logo.png',
                        width: 222),
                    SizedBox(
                      //عشان اغير مكان البوكس ويصير بعيد عن الصوره اللي فوق
                      height: 35,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "/login");
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.purple),
                        padding: MaterialStateProperty.all(
                            EdgeInsets.symmetric(horizontal: 88, vertical: 10)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(27))),
                      ),
                      child: Text(
                        "login",
                        style: TextStyle(
                            fontSize: 24, color: Color.fromARGB(255, 14, 0, 0)),
                      ),
                    ),
                    SizedBox(
                      height: 22,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "/signup");
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.purple[100]),
                        padding: MaterialStateProperty.all(
                            EdgeInsets.symmetric(horizontal: 88, vertical: 13)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(27))),
                      ),
                      child: Text(
                        "SIGNUP",
                        style: TextStyle(
                            fontSize: 17, color: Color.fromARGB(255, 14, 0, 0)),
                      ),
                    ),
                    SizedBox(
                      height: 22,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("continue as "),
                        GestureDetector(
                          //methode for the text to can press on in and open another window
                          onTap: () {
                            Navigator.pushNamed(context, "/home");
                          },
                          child: Text(
                            " Guest",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
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
              left: 0,
              child: Image.asset(
                'assets/images/main_bottom.png',
                width: 100,
              ),
            ),
            /*Positioned(
              top: 110,
              left: 20,
              right: 20,
              child: Image.asset(
                'assets/images/glow_guide_logo.png',
                width: 100,
              ),
            ),*/
          ],
        ),
      ),
    );
  }
}
