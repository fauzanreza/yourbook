import 'package:flutter/material.dart';
import 'package:yourbook/Profile/Barang.dart';
import 'package:yourbook/Profile/Profil.dart';
import 'package:yourbook/Profile/Setting.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 210,
          flexibleSpace: SafeArea(
            child: Container(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 280),
                    child: SafeArea(
                        top: true,
                        child: MaterialButton(
                          child: Icon(
                            Icons.close_rounded,
                            color: Colors.blue,
                          ),
                          onPressed: () {},
                        )),
                  ),
                  Container(
                    width: 100.0,
                    height: 100.0,
                    decoration: new BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.blue,
                    ),
                  ),
                  Padding(
                      padding:
                          EdgeInsets.only(left: 20.0, top: 20.0, bottom: 10.0),
                      child: new Stack(fit: StackFit.loose, children: <Widget>[
                        new Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              new Text('Falia Aurellia',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.0,
                                      color: Colors.black))
                            ])
                      ]))
                  // set your search bar setting
                ],
              ),
            ),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: Container(
          child: DefaultTabController(
            length: 3,
            child: Column(
              children: <Widget>[
                Container(
                  constraints: BoxConstraints(maxHeight: 150.0),
                  child: Material(
                    color: Colors.white,
                    child: TabBar(
                      indicatorColor: Colors.transparent,
                      tabs: [
                        Tab(
                          child: Align(
                            alignment: Alignment.center,
                            child: Text("Barang saya"),
                          ),
                        ),
                        Tab(
                          child: Align(
                            alignment: Alignment.center,
                            child: Text("Profile"),
                          ),
                        ),
                        Tab(
                          child: Align(
                            alignment: Alignment.center,
                            child: Text("Pengaturan"),
                          ),
                        ),
                      ],
                      labelColor: Colors.black,
                      unselectedLabelColor: Colors.grey,
                      indicatorSize: TabBarIndicatorSize.label,
                      indicator: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(5),
                          topRight: Radius.circular(5),
                        ),
                        color: Color.fromARGB(255, 166, 204, 242),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: TabBarView(
                    children: [
                      Barang(),
                      Profil(),
                      Setting(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
