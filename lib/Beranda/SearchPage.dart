import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
          padding: const EdgeInsets.all(10),
          child: Text(
            'Search',
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.w600, fontSize: 40),
          )),
    ));
  }
}
