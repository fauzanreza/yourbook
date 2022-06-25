import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:yourbook/Feature/detail.dart';
import 'package:yourbook/Feature/maps.dart';
import 'package:yourbook/Feature/notif.dart';

const AndroidNotificationChannel channel = AndroidNotificationChannel(
    'test_notif', 'High Imprtance Notification',
    importance: Importance.high, playSound: true);

final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await flutterLocalNotificationsPlugin
      .resolvePlatformSpecificImplementation<
          AndroidFlutterLocalNotificationsPlugin>()
      ?.createNotificationChannel(channel);

  runApp(formsewa(location: ""));
}

class formsewa extends StatefulWidget {
  var location;

  formsewa({Key? key, required this.location}) : super(key: key);

  @override
  _form createState() => _form();
}

class _form extends State<formsewa> {
  String _provinsi = 'Jawa Barat';
  String _metode = "Tunai";
  var metode = ["Tunai", "Bank Mandiri", "Bank BCA"];
  var _bykprov = [
    "Jawa Barat",
    "Jakarta",
    "Sulawesi Selatan",
    "Jawa Timur",
    "Jawa Tengah",
  ];

  void showNotification() {
    setState(() {});
    flutterLocalNotificationsPlugin.show(
        0,
        "test",
        "Have a good day",
        NotificationDetails(
            android: AndroidNotificationDetails(channel.id, channel.name,
                channelDescription: "Yes im here!",
                importance: Importance.high,
                color: Colors.blue,
                playSound: true,
                icon: '@mipmap/ic_launcher')));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: ListView(children: [
      Container(
          child: Column(children: [
        Row(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
          SafeArea(
              top: true,
              child: MaterialButton(
                child: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              )),
          SafeArea(
              top: true,
              child: Container(
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  'Form Sewa Buku',
                  style: TextStyle(fontSize: 24, color: Colors.black),
                ),
              )),
        ]),
      ])),
      Container(
        child: Form(
          child: Container(
            padding: EdgeInsets.only(left: 30.0, right: 30.0, top: 20),
            child: Column(children: [
              Container(
                alignment: Alignment.topLeft,
                child: Text(
                  "Nama Lengkap",
                ),
              ),
              Container(
                  margin: EdgeInsets.only(bottom: 10),
                  child: TextFormField(
                    autofocus: true,
                    decoration: new InputDecoration(
                      hintText: "Masukan nama lengkap anda",
                      border: OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(5.0)),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Nama tidak boleh kosong';
                      }
                      return null;
                    },
                  )),
              Container(
                margin: EdgeInsets.only(top: 5),
                alignment: Alignment.topLeft,
                child: Text(
                  "Alamat Lengkap",
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10),
                child: Container(
                  child: Text("${widget.location}"),
                ),
                // child: TextFormField(
                //   autofocus: true,
                //   decoration: new InputDecoration(
                //     hintText: "Jl. sukapura no.12",
                //     border: OutlineInputBorder(
                //         borderRadius: new BorderRadius.circular(5.0)),
                //   ),
                //   validator: (value) {
                //     if (value!.isEmpty) {
                //       return 'Nama tidak boleh kosong';
                //     }
                //     return null;
                //   },
                // )
              ),
              Container(
                  margin: EdgeInsets.only(bottom: 10),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MapsScreen()));
                    },
                    child: new Text("Lokasi menggunakan maps"),
                  )),
              Container(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Provinsi",
                    ),
                  ),
                  Container(
                      child: DropdownButton(
                    value: _provinsi,
                    icon: const Icon(Icons.arrow_drop_down),
                    items: _bykprov.map((String _bykprov) {
                      return DropdownMenuItem(
                        value: _bykprov,
                        child: Text(_bykprov),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        _provinsi = newValue!;
                      });
                    },
                  )),
                ],
              )),
              Container(
                margin: EdgeInsets.only(top: 5),
                alignment: Alignment.topLeft,
                child: Text(
                  "No. Hp",
                ),
              ),
              Container(
                  margin: EdgeInsets.only(bottom: 10),
                  child: TextFormField(
                    keyboardType: TextInputType.phone,
                    decoration: new InputDecoration(
                      hintText: "cth : 0822343xxxx",
                      border: OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(5.0)),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Nomor tidak boleh kosong';
                      }
                      return null;
                    },
                  )),
              Container(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                    Container(
                        margin: EdgeInsets.only(bottom: 10),
                        child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Harga Sewa: ",
                              style: TextStyle(fontSize: 15),
                            ))),
                    Container(
                        margin: EdgeInsets.only(bottom: 10),
                        child: Align(
                            alignment: Alignment.topRight,
                            child: Text("Rp 20.000",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.blueAccent,
                                  fontWeight: FontWeight.bold,
                                )))),
                  ])),
              Container(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Metode Pembayaran",
                    ),
                  ),
                  Container(
                      child: DropdownButton(
                    value: _metode,
                    icon: const Icon(Icons.arrow_drop_down),
                    items: metode.map((String metode) {
                      return DropdownMenuItem(
                        value: metode,
                        child: Text(metode),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        _metode = newValue!;
                      });
                    },
                  )),
                ],
              )),
              Container(
                  margin: EdgeInsets.only(top: 50),
                  child: ElevatedButton(
                    onPressed: () => {showNotification()},
                    child: new Text("Submit"),
                  )),
            ]),
          ),
        ),
      )
    ])));
  }
}
