import 'package:flutter/material.dart';

class Notif extends StatefulWidget {
  const Notif({Key? key}) : super(key: key);

  @override
  State<Notif> createState() => _NotifState();
}

class _NotifState extends State<Notif> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Notifikasi'),
        ),
        body: Align(
            alignment: Alignment.topCenter,
            child: Container(
                margin: const EdgeInsets.symmetric(vertical: 30.0),
                child: Flexible(
                  child: ListView(children: <Widget>[
                    Card(
                      //card-1
                      child: GestureDetector(
                        child: Container(
                          height: 50,
                          child: Row(
                            children: [
                              Center(
                                child: Container(
                                  child: Column(
                                    children: [
                                      Container(
                                          alignment: Alignment.topLeft,
                                          child: RichText(
                                            text: const TextSpan(
                                              children: [
                                                TextSpan(
                                                    text:
                                                        "Penyewaan buku berhasil dilakukan",
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 24)),
                                              ],
                                            ),
                                          )),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        onTap: () {
                          // Add your onPressed code here!
                        },
                      ),
                    ),
                    Card(
                      //card-2
                      child: GestureDetector(
                        child: Container(
                          height: 50,
                          child: Row(
                            children: [
                              Container(
                                  alignment: Alignment.topLeft,
                                  child: RichText(
                                    text: const TextSpan(
                                      children: [
                                        TextSpan(
                                            text:
                                                "Penyewaan buku berhasil dilakukan",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 24)),
                                      ],
                                    ),
                                  )),
                            ],
                          ),
                        ),
                        onTap: () {
                          // Add your onPressed code here!
                        },
                      ),
                    ),
                  ]),
                ))),
      ),
    );
  }
}
