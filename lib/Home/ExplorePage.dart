import 'package:flutter/material.dart';

class Explore extends StatefulWidget {
  const Explore({Key? key}) : super(key: key);

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  List<Widget> listbuku = [];

  _ExploreState() {
    listbuku.add(Container(
      padding: EdgeInsets.all(10),
      child: Image(
          image: AssetImage(
        "assets/book1.png",
      )),
    ));
    listbuku.add(Container(
      padding: EdgeInsets.all(10),
      child: Image(
          image: AssetImage(
        "assets/book2.png",
      )),
    ));
    listbuku.add(Container(
      padding: EdgeInsets.all(10),
      child: Image(
          image: AssetImage(
        "assets/book3.png",
      )),
    ));
    listbuku.add(Container(
      padding: EdgeInsets.all(10),
      child: Image(
          image: AssetImage(
        "assets/book1.png",
      )),
    ));
    listbuku.add(Container(
      padding: EdgeInsets.all(10),
      child: Image(
          image: AssetImage(
        "assets/book2.png",
      )),
    ));
    listbuku.add(Container(
      padding: EdgeInsets.all(10),
      child: Image(
          image: AssetImage(
        "assets/book3.png",
      )),
    ));
    listbuku.add(Container(
      padding: EdgeInsets.all(10),
      child: Image(
          image: AssetImage(
        "assets/book1.png",
      )),
    ));
    listbuku.add(Container(
      padding: EdgeInsets.all(10),
      child: Image(
          image: AssetImage(
        "assets/book2.png",
      )),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(bottom: 25),
            child: Column(
              children: [
                Container(
                  width: 345,
                  height: 235,
                  padding: EdgeInsets.all(3),
                  child: Image(
                    image: AssetImage("assets/promo.png"),
                  ),
                ),
                Container(
                  width: 400,
                  height: 250,
                  child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: listbuku,
                  ),
                ),
                Container(
                  width: 400,
                  height: 250,
                  child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: listbuku,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
