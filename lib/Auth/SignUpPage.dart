import 'package:flutter/material.dart';
import 'package:yourbook/Beranda.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color.fromRGBO(30, 76, 175, 1.0),
              Color.fromRGBO(166, 204, 242, 1.0),
            ],
          )),
          child: ListView(
            children: <Widget>[
              Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.only(bottom: 20, top: 10),
                  child: const Text(
                    'SIGN UP',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 40),
                  )),
              Container(
                child: Text(
                  "Nama Lengkap",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 16),
                ),
                padding: EdgeInsets.only(left: 15),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      labelText: 'tulis nama lengkap kamu',
                      fillColor: Colors.white,
                      filled: true),
                ),
              ),
              Container(
                child: Text(
                  "Email",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 16),
                ),
                padding: EdgeInsets.only(left: 15),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      labelText: 'tulis email aktif kamu',
                      fillColor: Colors.white,
                      filled: true),
                ),
              ),
              Container(
                child: Text(
                  "Nomor HP",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 16),
                ),
                padding: EdgeInsets.only(left: 15),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      labelText: 'tulis nomor hp aktif kamu',
                      fillColor: Colors.white,
                      filled: true),
                ),
              ),
              Container(
                child: Text(
                  "Password",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 16),
                ),
                padding: EdgeInsets.only(left: 15),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 30),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      labelText: 'Password',
                      fillColor: Colors.white,
                      filled: true),
                ),
              ),
              Container(
                child: ElevatedButton(
                    child: Text("Sign Up", style: TextStyle(fontSize: 16)),
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Color.fromRGBO(0, 14, 209, 1.0)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ))),
                    onPressed: () {
                      //signup screen
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Beranda()),
                      );
                    }),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20),
                child: Row(
                  children: <Widget>[
                    const Text('Already have account?'),
                    TextButton(
                      child: const Text(
                        'Login',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color.fromRGBO(0, 29, 130, 1.0),
                        ),
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    )
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
              ),
            ],
          )),
    );
  }
}
