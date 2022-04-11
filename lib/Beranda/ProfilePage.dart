import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
          padding: EdgeInsets.only(top: 80),
          transform: Matrix4.translationValues(0.0, -180.0, 0.0),
          child: Flexible(
              child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(children: [
                    //Name section.
                    Container(
                        padding: const EdgeInsets.fromLTRB(10, 100, 10, 60),
                        child: Text(
                          'Profile',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 40),
                        )),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: 25.0, vertical: 10.0),
                        child: Text(
                          "Nama",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 15,
                              color: Color(0xFF808080)),
                        ),
                      ),
                    ),
                    Align(
                      child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 25.0),
                          height: 35,
                          child: const TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'nama',
                            ),
                          )),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: 25.0, vertical: 10.0),
                        child: Text(
                          "Email",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 15,
                              color: Color(0xFF808080)),
                        ),
                      ),
                    ),
                    Align(
                      child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 25.0),
                          height: 35,
                          child: const TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'email',
                            ),
                          )),
                    ),

                    //ID Card section.
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: 25.0, vertical: 10.0),
                        child: Text(
                          "No HP",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 15,
                              color: Color(0xFF808080)),
                        ),
                      ),
                    ),
                    Align(
                      child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 25.0),
                          height: 35,
                          child: const TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'nomer HP',
                            ),
                          )),
                    ),
                    Row(
                      children: <Widget>[
                        const Text('Have another account?'),
                        TextButton(
                          child: const Text(
                            'Sign Out',
                            style: TextStyle(
                              fontSize: 16,
                              color: Color.fromRGBO(0, 29, 130, 1.0),
                            ),
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        )
                      ],
                      mainAxisAlignment: MainAxisAlignment.center,
                    ),
                    //End of text entry section.
                  ])))),
    ));
  }
}
