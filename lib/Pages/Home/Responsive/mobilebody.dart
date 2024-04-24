import 'package:flutter/material.dart';
import 'package:sewa/Pages/Home/Home.dart';

class MobileBody extends StatelessWidget {
  const MobileBody({super.key});

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
        child: Wrap(spacing: 10, runSpacing: 10, children: [
          SizedBox(
            height: 750,
            width: 750,
            child: Column(
              children: [
                SizedBox(height: 25, width: 500),
                SizedBox(
                  child: Image(
                    image: AssetImage('images/people.png'),
                    fit: BoxFit.cover,
                      width: 600.0,
                      height: 240.0
                  ),

                  //
                ),
                SizedBox(
                  height: 50,
                ),
                Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                runAlignment: WrapAlignment.spaceEvenly,
                alignment: WrapAlignment.center,
                  children: [Text(
                    "Welcome to SEWA We're Delighted to have you join our caring community",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                    ),
                  ),]
                ),
                SizedBox(
                  width: 50,
                  height: 50,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => Home()));
                  },
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.blue),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.mail_outline,color: Colors.white,),
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
                Row(children: [
                  SizedBox(width: 15),
                  OutlinedButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
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
                        Icon(Icons.apple, color: Colors.white,),
                        SizedBox(width: 15),
                        Text(
                          "Sign in with Apple",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                              height: 1.41),
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                  OutlinedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
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
                          Icon(Icons.g_translate_outlined,color: Colors.white,),
                          SizedBox(width: 5),
                          Text(
                            "Sign in with Google",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                                height: 1.41),
                          )
                        ]),
                  ),
                
                ]),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 20,
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
    );
  }
}