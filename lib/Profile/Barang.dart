import 'package:flutter/material.dart';
import 'package:yourbook/Feature/detail.dart';

class Barang extends StatefulWidget {
  const Barang({Key? key}) : super(key: key);

  @override
  State<Barang> createState() => _BarangState();
}

class _BarangState extends State<Barang> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: <Widget>[
        Container(
          child: Column(children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      width: 172,
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
                              Icons.turned_in,
                              color: Color.fromARGB(255, 6, 58, 148),
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
                      width: 172,
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
                              fit: BoxFit.cover,
                            ),
                          ),
                          ListTile(
                            title: const Text(
                              'MeloDylan',
                              style: TextStyle(fontFamily: 'Poppins'),
                            ),
                            trailing: Icon(
                              Icons.turned_in,
                              color: Color.fromARGB(255, 6, 58, 148),
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
          ]),
        )
      ]),
    );
  }
}
