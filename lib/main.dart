import 'package:flutter/material.dart';
import 'package:yourbook/Auth/LoginPage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:yourbook/Auth/SignUpPage.dart';
import 'package:yourbook/Beranda.dart';
import 'firebase_options.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

final navigatorKey = GlobalKey<NavigatorState>();

MyTheme currentTheme = MyTheme();

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    currentTheme.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      themeMode: currentTheme.currentTheme(),
      navigatorKey: navigatorKey,
      home: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Something went wrong'));
          } else if (snapshot.hasData) {
            return Beranda();
          } else {
            return SignupPage();
          }
        },
      ),
    );
  }
}

class MyTheme with ChangeNotifier {
  static bool _isLight = true;

  ThemeMode currentTheme() {
    return _isLight ? ThemeMode.dark : ThemeMode.light;
  }

  void switchTheme() {
    _isLight = !_isLight;
    notifyListeners();
  }
}
