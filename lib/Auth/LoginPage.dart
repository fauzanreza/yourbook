import 'package:flutter/material.dart';
import 'package:form_floating_action_button/form_floating_action_button.dart';
import 'package:form_validation/form_validation.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:yourbook/Auth/SignUpPage.dart';

import '../main.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final userController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    userController.dispose();
    passwordController.dispose();

    super.dispose();
  }

  bool _loading = false;

  void _onSubmit() async {
    setState(() => _loading = true);
    await Future.delayed(Duration(seconds: 3));
    _loading = false;
    if (mounted == true) {
      setState(() {
        onPressed() {
          signIn();
        }
      });
    }
  }

  Future signIn() async {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => Center(child: CircularProgressIndicator()),
    );
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: userController.text.trim(),
        password: passwordController.text.trim(),
      );
    } on FirebaseAuthException catch (e) {
      print(e);
    }
    navigatorKey.currentState!.popUntil((route) => route.isFirst);
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Builder(
        builder: (BuildContext context) => Scaffold(
          body: SingleChildScrollView(
            child: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(25),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Color.fromRGBO(30, 76, 175, 1.0),
                  Color.fromRGBO(166, 204, 242, 1.0),
                ],
              )),
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.all(10),
                        margin: const EdgeInsets.only(bottom: 60, top: 40),
                        child: const Text(
                          'LOGIN',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 40),
                        )),
                    Container(
                      child: Text(
                        "Email",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 18),
                      ),
                      padding: EdgeInsets.only(right: 235, bottom: 5),
                    ),
                    TextFormField(
                      controller: userController,
                      cursorColor: Colors.white,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          fillColor: Colors.white,
                          filled: true),
                      validator: (value) {
                        var validator = Validator(
                          validators: [RequiredValidator()],
                        );

                        return validator.validate(
                          context: context,
                          label: 'Required',
                          value: value,
                        );
                      },
                    ),
                    SizedBox(
                      height: 16.0,
                    ),
                    Container(
                      child: Text(
                        "Password",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 18),
                      ),
                      padding: EdgeInsets.only(right: 200, bottom: 5),
                    ),
                    TextFormField(
                      controller: passwordController,
                      obscureText: true,
                      cursorColor: Colors.white,
                      textInputAction: TextInputAction.done,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          fillColor: Colors.white,
                          filled: true),
                      validator: (value) {
                        var validator = Validator(
                          validators: [
                            MaxLengthValidator(length: 8),
                            MinLengthValidator(length: 3),
                          ],
                        );

                        return validator.validate(
                          context: context,
                          label: 'Min 3 / Max 8 Length',
                          value: value,
                        );
                      },
                    ),
                    TextButton(
                      onPressed: () {
                        //forgot password screen
                      },
                      child: const Text(
                        'Forgot Password',
                        style: TextStyle(
                          color: Color.fromARGB(255, 0, 50, 143),
                        ),
                      ),
                    ),
                    ElevatedButton(
                        onPressed: signIn,
                        // icon: Icon(
                        //   Icons.lock_open,
                        //   size: 24,
                        // ),
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Color.fromRGBO(0, 14, 209, 1.0)),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                            ))),
                        child: Text(
                          'Sign In',
                          style: TextStyle(fontSize: 22),
                        )),
                    // Container(
                    //   child: FormFloatingActionButton(
                    //     loading: _loading,
                    //     onSubmit: _onSubmit,
                    //     onValidate: () async {
                    //       var error = Form.of(context)?.validate();
                    //       return error ?? false;
                    //     },
                    //   ),
                    // ),
                    Container(
                      margin: const EdgeInsets.only(top: 170, bottom: 20),
                      child: Row(
                        children: <Widget>[
                          const Text('Does not have account?'),
                          TextButton(
                            child: const Text(
                              'Sign Up',
                              style: TextStyle(
                                fontSize: 16,
                                color: Color.fromRGBO(0, 29, 130, 1.0),
                              ),
                            ),
                            onPressed: () {
                              //signup screen

                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const SignupPage()),
                              );
                            },
                          )
                        ],
                        mainAxisAlignment: MainAxisAlignment.center,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
