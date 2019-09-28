import 'package:flutter/material.dart';

// EMAIL FIELD
Widget getEmailField() {
  return TextFormField(
    // only needed for passwords
    obscureText: false,
    // implement app style
    style: TextStyle(fontFamily: 'Montserrat', fontSize: 20.0),
    decoration: InputDecoration(
      contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
      // background color
      fillColor: Colors.white,
      // fill with background color
      filled: true,
      hintText: "example@gmail.com",
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(1.0)),
      // when border is clicked
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.black, width: 1.0),
      ),
    ),
  );
}
// END EMAIL FIELD

// PASSWORD FIELD
Widget getPasswordField() {
  return TextFormField(
    // used to * password
    obscureText: true,
    // implement text style
    style: TextStyle(fontFamily: 'Montserrat', fontSize: 20.0),
    decoration: InputDecoration(
      contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
      // set the background color of the field
      fillColor: Colors.white,
      // fill with background color
      filled: true,
      hintText: "Password",
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(1.0)),
      focusedBorder: OutlineInputBorder(
        // when border is clicked
        borderSide: BorderSide(color: Colors.black, width: 1.0),
      ),
    ),
  );
}
// END PASSWORD FIELD

// TITLE
Widget getTitle() {
  return Text("InvestME",
      style: TextStyle(
          color: Colors.white, fontWeight: FontWeight.bold, fontSize: 50));
}
// END TITLE

Widget getTextCaption() {
  return Align(
    alignment: Alignment.centerLeft,
    child: Text(
      "Spending too much? Invest It.",
      style: TextStyle(
        color: Colors.white,
      ),
    ),
  );
}

Widget getSizedBox (double h) {
  return SizedBox (
    height: h
  );
}