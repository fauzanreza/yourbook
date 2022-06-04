import 'package:flutter/material.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';
import 'package:yourbook/Feature/chat.dart';
import 'package:yourbook/Feature/notif.dart';
import 'package:yourbook/Home/ExplorePage.dart';
import 'package:yourbook/Home/NearPage.dart';
import 'package:yourbook/Home/RilisBaru.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          flexibleSpace: SafeArea(
            child: Container(
              child: Column(
                children: [
                  Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SafeArea(
                            top: true,
                            child: Container(
                              padding: EdgeInsets.only(left: 25),
                              child: Text("Beranda",
                                  style: TextStyle(
                                    fontSize: 42,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,
                                  )),
                            )),
                        SafeArea(
                            top: true,
                            child: MaterialButton(
                              padding: EdgeInsets.only(left: 60),
                              child: Icon(
                                Icons.chat_rounded,
                                color: Colors.blue,
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Chat()),
                                );
                              },
                            )),
                        SafeArea(
                            top: true,
                            child: MaterialButton(
                              child: Icon(
                                Icons.notifications_none_rounded,
                                color: Colors.blue,
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Notif()),
                                );
                              },
                            )),
                      ]) // set your search bar setting
                ],
              ),
            ),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: DefaultTabController(
          length: 3,
          child: Column(
            children: <Widget>[
              Container(
                constraints: BoxConstraints(maxHeight: 150.0),
                child: Material(
                  child: TabBar(
                    indicatorColor: Color.fromRGBO(27, 66, 206, 1.0),
                    tabs: [
                      Tab(
                        icon: Text("Explore",
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'Poppins',
                            )),
                      ),
                      Tab(
                          icon: Text(
                        "Terdekat",
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Poppins',
                        ),
                      )),
                      Tab(
                          icon: Text(
                        "Rilis Baru",
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Poppins',
                        ),
                      )),
                    ],
                    labelColor: Color.fromRGBO(27, 66, 206, 1.0),
                    unselectedLabelColor: Colors.grey,
                    indicator: DotIndicator(
                      color: Color.fromRGBO(27, 66, 206, 1.0),
                      distanceFromCenter: 16,
                      radius: 3,
                      paintingStyle: PaintingStyle.fill,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    Explore(),
                    NearPage(),
                    RilisPage(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
