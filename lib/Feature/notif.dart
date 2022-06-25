import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter/material.dart';

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

  runApp(const Notif());
}

class Notif extends StatelessWidget {
  const Notif({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Notification Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  // late FlutterLocalNotificationsPlugin notifikasiSewa;

  // @override
  // void initState() {
  //   super.initState();
  //   var androidInitilize = InitializationSettings(
  //     android: AndroidInitializationSettings('logo'));
  //   //notifikasiSewa = new FlutterLocalNotificationsPlugin();
  //   notifikasiSewa.initialize(androidInitilize,
  //     onSelectNotification: (payload) =>  notificationSelected);
  // }

  // @override
  // void showNotification() {
  //   setState(() {
  //     _counter++;
  //   });
  //   var androidDetails = NotificationDetails(
  //     android: AndroidNotificationDetails(channel.id, channel.name,
  //     channelDescription: "Yes im here!",
  //     importance: Importance.high,
  //     color: Colors.blue,
  //     playSound: true));

  //   notifikasiSewa.show(
  //      0, "Testing $_counter", "Have a good day", androidDetails );
  // }

  void showNotification() {
    setState(() {
      _counter++;
    });
    var androidInitilize = const InitializationSettings(
        android: AndroidInitializationSettings('logo'),
        iOS: IOSInitializationSettings());
    flutterLocalNotificationsPlugin.show(
        0,
        "Penyewaan buku berhasil!",
        "Pesanan anda akan di proses",
        NotificationDetails(
            android: AndroidNotificationDetails(channel.id, channel.name,
                channelDescription: "Yes im here!",
                importance: Importance.high,
                color: Colors.blue,
                playSound: true,
                icon: '@mipmap/ic_launcher')));
    flutterLocalNotificationsPlugin.initialize(androidInitilize,
        onSelectNotification: (payload) => onSelectNotification);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              "There's no notification",
            ),
          ],
        ),
      ),
    );
  }

  // Future notificationSelected(String payload) async {
  //   showDialog(
  //       context: context,
  //       builder: (context) => AlertDialog(
  //             content: Text("Notification Clicked $payload"),
  //           ));
  // }
  void onSelectNotification(String payload) {
    Navigator.of(context).push(MaterialPageRoute(builder: (_) {
      return NewScreen(payload: payload);
    }));
  }
}

class NewScreen extends StatelessWidget {
  String payload;
  NewScreen({
    required this.payload,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(payload),
      ),
    );
  }
}
