import 'package:flutter/material.dart';
import 'package:flutter_app/screens/login.dart';
import 'package:flutter_app/screens/newEntry.dart';


void main() => runApp(InvestMe());

class InvestMe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'investME',
      theme: ThemeData(
        // Green to match the investMe Color Scheme
        primarySwatch: Colors.lightGreen,
      ),
      home: NewEntryPage(title: 'Login'),
    );
  }
}