import 'package:flutter/material.dart';
import 'package:yourbook/Feature/detail.dart';
import 'package:yourbook/Feature/google_maps.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPage createState() => _SearchPage();
}

class _SearchPage extends State<SearchPage> {
  String _genre = 'Genre';
  var _genrebook = ["Genre", "Romance", "Fantasi", "Horor", "Non-Fiksi"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children: <Widget>[
      Container(
        margin: EdgeInsets.only(left: 4, right: 5),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              OutlinedButton.icon(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SimpleMap()));
                  },
                  label: Text("search judul/penerbit/pengarang...",
                      style:
                          TextStyle(color: Color.fromARGB(255, 182, 182, 182))),
                  icon: Icon(
                    Icons.map_sharp,
                    size: 20,
                  )),
              DropdownButton(
                value: _genre,
                icon: const Icon(Icons.arrow_drop_down),
                items: _genrebook.map((String _genrebook) {
                  return DropdownMenuItem(
                    value: _genrebook,
                    child: Text(_genrebook),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    _genre = newValue!;
                  });
                },
              ),
              // Container(
              // width: double.infinity,
              // height: 40,
              // decoration: BoxDecoration(
              //     color: Colors.white, borderRadius: BorderRadius.circular(5)),
              // child: TextField(
              //     decoration: InputDecoration(
              //         suffixIcon: IconButton(
              //           icon: Icon(Icons.map),
              //           onPressed: () {
              //             Navigator.push(
              //               context,
              //               MaterialPageRoute(
              //                   builder: (context) => const SimpleMap()),
              //             );
              //           },
              //         ),
              //         hintText: 'search judul/penerbit/penulis...'))),
              // OutlinedButton.icon(
              //     onPressed: () {},
              //     label: Text("Genre",
              //         style: TextStyle(color: Color.fromARGB(255, 182, 182, 182))),
              //     icon: Icon(
              //       Icons.arrow_drop_down,
              //       size: 18,
              //     )),
            ]),
      ),
      Container(
        margin: EdgeInsets.only(top: 20, left: 15),
        child: Column(
          children: [
            Container(
                alignment: Alignment.topLeft,
                child: Text(
                  "Terakhir Dilihat",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
                ))
          ],
        ),
      ),
      Container(
          child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: <Widget>[
                Container(
                    child: Column(children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 20, left: 15),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            width: 180,
                            height: 260,
                            child: Card(
                              clipBehavior: Clip.antiAlias,
                              child: Column(children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => const detail()),
                                    );
                                  },
                                  child: Ink.image(
                                    image: AssetImage("assets/book3.png"),
                                    height: 180,
                                    width: 120,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                ListTile(
                                  title: const Text(
                                    'MeloDylan',
                                    style: TextStyle(fontFamily: 'Poppins'),
                                  ),
                                  trailing: Icon(
                                    Icons.turned_in_not_outlined,
                                  ),
                                  subtitle: Text(
                                    'Rp 50.000',
                                    style: TextStyle(
                                        color: Colors.black.withOpacity(0.6)),
                                  ),
                                ),
                              ]),
                            ),
                          ),
                          Container(
                            width: 180,
                            height: 260,
                            child: Card(
                              clipBehavior: Clip.antiAlias,
                              child: Column(children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => const detail()),
                                    );
                                  },
                                  child: Ink.image(
                                    image: AssetImage("assets/book2.png"),
                                    height: 180,
                                    width: 120,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                ListTile(
                                  title: const Text(
                                    'MeloDylan',
                                    style: TextStyle(fontFamily: 'Poppins'),
                                  ),
                                  trailing: Icon(
                                    Icons.turned_in_not_outlined,
                                  ),
                                  subtitle: Text(
                                    'Rp 50.000',
                                    style: TextStyle(
                                        color: Colors.black.withOpacity(0.6)),
                                  ),
                                ),
                              ]),
                            ),
                          ),
                          Container(
                            width: 180,
                            height: 260,
                            child: Card(
                              clipBehavior: Clip.antiAlias,
                              child: Column(children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => const detail()),
                                    );
                                  },
                                  child: Ink.image(
                                    image: AssetImage("assets/book2.png"),
                                    height: 180,
                                    width: 120,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                ListTile(
                                  title: const Text(
                                    'MeloDylan',
                                    style: TextStyle(fontFamily: 'Poppins'),
                                  ),
                                  trailing: Icon(
                                    Icons.turned_in_not_outlined,
                                  ),
                                  subtitle: Text(
                                    'Rp 50.000',
                                    style: TextStyle(
                                        color: Colors.black.withOpacity(0.6)),
                                  ),
                                ),
                              ]),
                            ),
                          ),
                        ]),
                  ),
                ])),
              ]))),
      Container(
        margin: EdgeInsets.only(top: 20, left: 15),
        child: Column(
          children: [
            Container(
                alignment: Alignment.topLeft,
                child: Text(
                  "Genre Popular",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
                ))
          ],
        ),
      ),
      Container(
        child: Column(children: [
          Container(
              margin: EdgeInsets.only(top: 10, left: 15, right: 15),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    ElevatedButton(onPressed: () {}, child: Text("Romance")),
                    ElevatedButton(onPressed: () {}, child: Text("Horor")),
                    ElevatedButton(
                        onPressed: () {}, child: Text("Fiksi Remaja")),
                    ElevatedButton(onPressed: () {}, child: Text("Fantasi")),
                  ]))
        ]),
      ),
      Container(
        margin: EdgeInsets.only(top: 20, left: 15),
        child: Column(
          children: [
            Container(
                alignment: Alignment.topLeft,
                child: Text(
                  "Buku yang paling diminati",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
                ))
          ],
        ),
      ),
      Container(
          margin: EdgeInsets.only(top: 20),
          child: Center(
              child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Column(
                    children: [
                      Container(
                        child: Row(children: [
                          Container(
                            margin: EdgeInsets.only(left: 15, right: 10),
                            child: Image(
                              image: AssetImage("assets/fantasi.jpg"),
                              width: 180,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 10),
                            child: Image(
                              image: AssetImage("assets/fiksi_remaja.jpg"),
                              width: 200,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 10),
                            child: Image(
                              image: AssetImage("assets/horor.jpg"),
                              width: 180,
                            ),
                          )
                        ]),
                      )
                    ],
                  )))),
    ]));
  }
}
