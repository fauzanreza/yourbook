import 'package:flutter/material.dart';
import 'package:form_floating_action_button/form_floating_action_button.dart';
import 'package:form_validation/form_validation.dart';
import 'package:yourbook/Auth/LoginPage.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  bool _loading = false;

  void _onSubmit() async {
    setState(() => _loading = true);
    await Future.delayed(Duration(seconds: 3));
    _loading = false;
    if (mounted == true) {
      setState(() {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const LoginPage()),
        );
      });
    }
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
                        margin: const EdgeInsets.only(bottom: 20, top: 40),
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
                            fontSize: 18),
                      ),
                      padding: EdgeInsets.only(right: 210, bottom: 5),
                    ),
                    TextFormField(
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
                        "Email",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 18),
                      ),
                      padding: EdgeInsets.only(right: 275, bottom: 5),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          fillColor: Colors.white,
                          filled: true),
                      validator: (value) {
                        var validator = Validator(
                          validators: [
                            RequiredValidator(),
                            EmailValidator(),
                          ],
                        );

                        return validator.validate(
                          context: context,
                          label: 'Email',
                          value: value,
                        );
                      },
                    ),
                    SizedBox(
                      height: 16.0,
                    ),
                    Container(
                      child: Text(
                        "Nomor HP",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 18),
                      ),
                      padding: EdgeInsets.only(right: 240, bottom: 5),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          fillColor: Colors.white,
                          filled: true),
                      validator: (value) {
                        var validator = Validator(
                          validators: [
                            RequiredValidator(),
                            PhoneNumberValidator(),
                          ],
                        );

                        return validator.validate(
                          context: context,
                          label: 'Phone Number',
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
                      padding: EdgeInsets.only(right: 240, bottom: 5),
                    ),
                    TextFormField(
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
                    Container(
                      child: FormFloatingActionButton(
                        loading: _loading,
                        onSubmit: _onSubmit,
                        onValidate: () async {
                          var error = Form.of(context)?.validate();
                          return error ?? false;
                        },
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      child: Row(
                        children: <Widget>[
                          const Text('already have an account ?'),
                          TextButton(
                            child: const Text(
                              'Sign In',
                              style: TextStyle(
                                fontSize: 16,
                                color: Color.fromRGBO(0, 29, 130, 1.0),
                              ),
                            ),
                            onPressed: () {
                              //signup screen
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const LoginPage()),
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
