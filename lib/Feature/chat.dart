import 'package:flutter/material.dart';

class Chat extends StatefulWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chatting',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Chat'),
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
                          height: 100,
                          color: Colors.white,
                          child: Row(children: [
                            Center(
                              child: Container(
                                padding: const EdgeInsets.all(10),
                                child: Column(children: [
                                  Container(
                                    width: 30,
                                    height: 30,
                                    decoration: BoxDecoration(
                                        color: Colors.red,
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                  ),
                                ]),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                alignment: Alignment.topLeft,
                                child: Column(
                                  children: [
                                    Container(
                                        margin: const EdgeInsets.symmetric(
                                            vertical: 5.0),
                                        alignment: Alignment.topLeft,
                                        child: RichText(
                                          text: const TextSpan(
                                            children: [
                                              TextSpan(
                                                  text:
                                                      "Terima kasih kak atas penyewaannya",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 20)),
                                            ],
                                          ),
                                        )),
                                  ],
                                ),
                              ),
                              flex: 8,
                            ),
                          ]),
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
                          height: 100,
                          color: Colors.white,
                          child: Row(
                            children: [
                              Center(
                                child: Container(
                                  padding: const EdgeInsets.all(10),
                                  child: Column(children: [
                                    Container(
                                      width: 30,
                                      height: 30,
                                      decoration: BoxDecoration(
                                          color: Colors.grey,
                                          borderRadius:
                                              BorderRadius.circular(30)),
                                    ),
                                  ]),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  alignment: Alignment.topLeft,
                                  child: Column(
                                    children: [
                                      Container(
                                          margin: const EdgeInsets.symmetric(
                                              vertical: 5.0),
                                          alignment: Alignment.topLeft,
                                          child: RichText(
                                            text: const TextSpan(
                                              children: [
                                                TextSpan(
                                                    text:
                                                        "Gimana soal penyewaan bukunya kak ?",
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 20)),
                                              ],
                                            ),
                                          )),
                                    ],
                                  ),
                                ),
                                flex: 8,
                              ),
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
