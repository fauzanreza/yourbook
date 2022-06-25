import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Profil extends StatefulWidget {
  const Profil({Key? key}) : super(key: key);

  @override
  State<Profil> createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;
    return Scaffold(
        body: new Container(
            color: Colors.white,
            child: Padding(
                padding: EdgeInsets.only(bottom: 25.0),
                child: new ListView(children: <Widget>[
                  Padding(
                    padding:
                        EdgeInsets.only(left: 25.0, right: 25.0, top: 25.0),
                    child: new Text(
                      'Profil Saya',
                      style: TextStyle(
                          color: Color.fromARGB(255, 17, 92, 154),
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Divider(height: 20, thickness: 1),
                  Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                      child: new Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            new Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                  child: Text(
                                    'Username',
                                    style: TextStyle(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(child: Text("Faalia_aurelia01")),
                              ],
                            ),
                            Divider(height: 20, thickness: 0.1),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 0),
                              child: new Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: <Widget>[
                                    new Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        new Container(
                                          child: Text(
                                            'Name',
                                            textAlign: TextAlign.justify,
                                            style: TextStyle(
                                                fontSize: 16.0,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        Container(
                                            child: Text("Faalia Aurelia")),
                                      ],
                                    ),
                                    Divider(height: 20, thickness: 0.1),
                                    Padding(
                                        padding: EdgeInsets.symmetric(
                                            vertical: 5, horizontal: 0),
                                        child: new Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: <Widget>[
                                              new Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: <Widget>[
                                                  Container(
                                                    child: Text(
                                                      'No.Hp',
                                                      style: TextStyle(
                                                          fontSize: 16.0,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ),
                                                  Container(
                                                      child:
                                                          Text("08786541322")),
                                                ],
                                              ),
                                              Divider(
                                                  height: 20, thickness: 0.1),
                                              Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      vertical: 5,
                                                      horizontal: 0),
                                                  child: new Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: <Widget>[
                                                        new Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: <Widget>[
                                                            Container(
                                                              child: Text(
                                                                'Email',
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        16.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold),
                                                              ),
                                                            ),
                                                            Container(
                                                              child: Text(
                                                                user.email!,
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        16),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Divider(
                                                            height: 20,
                                                            thickness: 0.1),
                                                        Padding(
                                                            padding: EdgeInsets
                                                                .symmetric(
                                                                    vertical: 5,
                                                                    horizontal:
                                                                        0),
                                                            child: new Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: <
                                                                    Widget>[
                                                                  new Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceBetween,
                                                                    children: <
                                                                        Widget>[
                                                                      Container(
                                                                        child:
                                                                            Text(
                                                                          'Password',
                                                                          textAlign:
                                                                              TextAlign.right,
                                                                          style: TextStyle(
                                                                              fontSize: 16.0,
                                                                              fontWeight: FontWeight.bold),
                                                                        ),
                                                                      ),
                                                                      Container(
                                                                          child:
                                                                              Text("*********")),
                                                                    ],
                                                                  ),
                                                                  Divider(
                                                                      height:
                                                                          20,
                                                                      thickness:
                                                                          0.1),
                                                                  Padding(
                                                                      padding: EdgeInsets.only(
                                                                          left:
                                                                              25.0,
                                                                          right:
                                                                              25.0,
                                                                          top:
                                                                              2.0),
                                                                      child: Center(
                                                                          child: TextButton(
                                                                        style: TextButton
                                                                            .styleFrom(
                                                                          primary:
                                                                              Colors.blue,
                                                                        ),
                                                                        onPressed:
                                                                            () {},
                                                                        child: Text(
                                                                            'edit akun',
                                                                            style:
                                                                                TextStyle(fontSize: 16.0, decoration: TextDecoration.underline)),
                                                                      ))),
                                                                  Container(
                                                                    margin: const EdgeInsets
                                                                            .only(
                                                                        top: 5),
                                                                    child: Row(
                                                                      children: <
                                                                          Widget>[
                                                                        const Text(
                                                                            'have another account ?'),
                                                                        TextButton(
                                                                          child:
                                                                              const Text(
                                                                            'Sign In',
                                                                            style:
                                                                                TextStyle(
                                                                              fontSize: 16,
                                                                              color: Colors.blue,
                                                                            ),
                                                                          ),
                                                                          onPressed: () => FirebaseAuth
                                                                              .instance
                                                                              .signOut(),
                                                                        )
                                                                      ],
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .center,
                                                                    ),
                                                                  ),
                                                                ]))
                                                      ]))
                                            ]))
                                  ]),
                            )
                          ]))
                ]))));
  }
}
