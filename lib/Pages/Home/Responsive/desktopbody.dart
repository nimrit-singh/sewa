import 'package:flutter/material.dart';
import 'package:sewa/Pages/Home/Home.dart';

class DesktopBody extends StatelessWidget {
  const DesktopBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 26, 25, 25),
        elevation: 0,
        centerTitle: true,
      ),
      backgroundColor: Color.fromARGB(255, 26, 25, 25),
      body: Center(
        child: Wrap(
          spacing: 10,
          runSpacing: 10,
          children: [
            SizedBox(
              height: 750,
              width: 900,
              child: Row(children: [
                SizedBox(
                  height: 25,
                ),
                SizedBox(
                  child: Image(
                    image: AssetImage('images/people.png'),
                    /*fit: BoxFit.cover,
                      width: 600.0,
                      height: 240.0*/
                  ),

                  //
                ),
                SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: Column(
                    children: [
                      SizedBox(
                        width: 350,
                        height: 150,
                        child: Wrap(children: [
                          Text(
                            "Welcome to SEWA We're Delighted to have you join our caring community",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 35,
                            ),
                          ),
                        ]),
                      ),
                      SizedBox(
                        height: 30,
                        width: 50,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (context) => Home()));
                        },
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10))),
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.blue),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.mail_outline),
                            SizedBox(width: 15),
                            Text(
                              "Sign up with Email",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 17,
                                  height: 1.41),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 15,
                        height: 15,
                      ),
                      Expanded(
                        child: Row(children: [
                          SizedBox(width: 15),
                          OutlinedButton(
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                                side: BorderSide(
                                    color: Colors.white,
                                    width: 5.0,
                                    style: BorderStyle.solid),
                              )),
                            ),
                            // side: BorderSide(color: Colors.blue),
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(Icons.apple),
                                SizedBox(width: 15),
                                Text(
                                  "Sign in with Apple",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 17,
                                      height: 1.41),
                                )
                              ],
                            ),
                          ),
                          SizedBox(width: 15),
                          OutlinedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                                side: BorderSide(
                                  color: Colors.white,
                                  width: 5.0,
                                  style: BorderStyle.solid,
                                ),
                              )),
                            ),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(Icons.g_translate_outlined),
                                  SizedBox(width: 6),
                                  Text(
                                    "Sign in with Google",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 17,
                                        height: 1.41),
                                  )
                                ]),
                          ),
                          SizedBox(
                            width: 50,
                          ),
                        ]),
                      ),
                      /*  SizedBox(
                        height: 20,
                      ),*/
                      SizedBox(
                        height: 30,
                        child: Text(
                          "By continuing you agree to the terms and conditions",
                          style: TextStyle(color: Colors.grey),
                        ), //make a link to terms and conditions
                      ),
                    ],
                  ),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
