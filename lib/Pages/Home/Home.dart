import 'package:flutter/material.dart';
import 'package:sewa/Pages/Home/Categories/Comunity.dart';
import 'package:sewa/Pages/Home/Categories/Emergencyalert.dart';
import 'package:sewa/Pages/Home/Categories/Geofencing.dart';
import 'package:sewa/Pages/Home/Categories/Resources.dart';
import 'package:sewa/Pages/Signin.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Signin(),
                  ));
              /*Navigator.push(
            NavigationDrawer(children: [
              Text("Logout"),
              Text("Logout"),
              Text("Logout"),
              Text("Contact us"),
              Text("Logout"),
            ])
            );*/
            },
            icon: const Icon(Icons.logout_outlined),
            iconSize: 35,
          ),
          title: Text(
            "Home",
            textScaleFactor: 1.5,
          ),
          actions: <Widget>[
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search_outlined),
              iconSize: 35,
            ),
            SizedBox(
              width: 35,
              child: CircleAvatar(
                backgroundImage: AssetImage('images/people.png'),
                radius: 20,
              ),
            ),
          ],
          backgroundColor: Color.fromARGB(255, 26, 25, 25),
          elevation: 0,
        ),
        backgroundColor: Color.fromARGB(255, 26, 25, 25),
        body: Column(
          children: [
            Text(
              "Hello!",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 17,
                  height: 1.41),
            ),
            Text(
              "James Anderson", //first name extarction from database
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 17,
                  height: 1.41),
            ),
            Row(
              children: [
              ElevatedButton(
                  onPressed: null,
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
                        SizedBox(width: 15),
                        Text(
                          "Overview",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 17,
                              height: 1.41),
                        )
                      ]))
            ]),
            Text(
              "Categories",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 17,
                  height: 1.41),
            ),
            Center(
              child: SizedBox(
                width: 450,
                height: 450,
                child: Padding(
                  padding: const EdgeInsets.all(50),
                  child: GridView(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10
                        ),
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Community()));
                        },
                        child: Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 25, 26, 26),
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.white.withOpacity(0.25),
                                  spreadRadius: 3,
                                  blurRadius: 10,
                                  offset: Offset(0, 3),
                                )
                              ]),
                          child: Center(
                            child: Column(mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.people_alt_outlined,
                                  color: Colors.white,
                                ),
                                Text(
                                  "Community",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12,
                                      height: 1.41),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Resources()));
                        },
                        child: Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 25, 26, 26),
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.white.withOpacity(0.25),
                                  spreadRadius: 3,
                                  blurRadius: 10,
                                  offset: Offset(0, 3),
                                )
                              ]),
                          child: Column(mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.document_scanner,
                                color: Colors.white,
                              ),
                              Text(
                                "Resources",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                    height: 1.41),
                              ),
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Geofencing()));
                        },
                        child: Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 25, 26, 26),
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.white.withOpacity(0.25),
                                  spreadRadius: 3,
                                  blurRadius: 10,
                                  offset: Offset(0, 3),
                                )
                              ]),
                          child: Center(
                            child: Column(mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.pin_drop,
                                  color: Colors.white,
                                ),
                                Text(
                                  "Geofencing",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12,
                                      height: 1.41),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Emergency_alert()));
                        },
                        child: Container(
                          // onTap: Navigator,
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 25, 26, 26),
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.white.withOpacity(0.25),
                                  spreadRadius: 3,
                                  blurRadius: 10,
                                  offset: Offset(0, 3),
                                )
                              ]),
                          child: Center(
                            child: Column(mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,children: [
                              Icon(
                                Icons.emergency_outlined,
                                color: Colors.white,
                              ),
                              Text(
                                "Emergency alerts",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                    height: 1.41),
                              )
                            ]),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}