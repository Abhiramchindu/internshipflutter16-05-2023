import 'package:flutter/material.dart';
import 'package:vennikulam1/day3/first_page.dart';
import 'package:vennikulam1/registration.dart';

import 'button page.dart';
import 'day3/flutterform.dart';
import 'day3/radiobutton.dart';
import 'day3/second_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.purple),
      home: Register(),
    );
  }
}
