import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app/widgets/reusableWidgets.dart';
import 'package:intl/intl.dart';

class NewEntryPage extends StatefulWidget {
  NewEntryPage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _NewEntryPageState createState() => _NewEntryPageState();
}

class _NewEntryPageState extends State<NewEntryPage> {
  //Icons
  static const IconData attach_money =
      IconData(0xe227, fontFamily: 'MaterialIcons');
  static const IconData calendar_today =
      IconData(0xe935, fontFamily: 'MaterialIcons');

  // Expenditure formKey
  static final _formKey1 = GlobalKey<FormState>();
  static final _formKey2 = GlobalKey<FormState>();
  DateTime _dateTime;

  String newDate;

  @override
  Widget build(BuildContext context) {
    TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);
    DateTime currentDate = DateTime.now();
    String formattedDate = DateFormat('MM-dd-yyyy').format(currentDate);

    // EXPENDITURE NAME
    final expenditureName = TextFormField(
      // only needed for passwords
      obscureText: false,
      // implement app style
      style: TextStyle(fontFamily: 'Montserrat', fontSize: 20.0),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        // background color
        fillColor: Colors.grey[200],
        // fill with background color
        filled: true,
        hintText: "Expenditure",
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(1.0)),
        // when border is clicked
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black, width: 1.0),
        ),
      ),
    );

    //EXPENDITURE NOTE
    final expenditureNote = TextFormField(
      // keyboardType: TextInputType.number,
      obscureText: false,
      // implement app style
      style: TextStyle(fontFamily: 'Montserrat', fontSize: 20.0),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        // background color
        fillColor: Colors.grey[200],
        // fill with background color
        filled: true,
        hintText: "Note",
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(1.0)),
        // when border is clicked
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black, width: 1.0),
        ),
      ),
    );

    final saveButton = Material(
      // how dimensional the button is (high up it is)
      elevation: 5.0,
      // rounded button
      borderRadius: BorderRadius.circular(0.0),
      color: Color(0xFF43A047),
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        // function to log the user into the account
        onPressed: () {},
        child: Text("Save",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Expenditure", textAlign: TextAlign.center)),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Padding(
              padding: const EdgeInsets.all(36.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Enter Amount",
                    style: TextStyle(fontSize: 35.0),
                  ),
                  Text(_dateTime == null ? formattedDate : newDate),
                  IconButton(
                    icon: Icon(calendar_today),
                    onPressed: () {
                      showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(2001),
                              lastDate: DateTime(2222))
                          .then((date) {
                        setState(() {
                          _dateTime = date;
                          newDate =
                              new DateFormat('MM-dd-yyyy').format(_dateTime);
                        });
                      });
                    },
                  ),
                  Flexible(
                    child: Container(
                      child: Row(
                        children: <Widget>[
                          Icon(
                            attach_money,
                            size: 150.0,
                          ),
                          Flexible(
                            child: Container(
                              child: Form(
                                key: _formKey2,
                                child: TextFormField(
                                  obscureText: false,
                                  textAlign: TextAlign.center,
                                  // implement app style
                                  style: TextStyle(
                                      fontFamily: 'Montserrat', fontSize: 20.0),
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.zero,
                                    // background color
                                    fillColor: Colors.grey[200],
                                    // fill with background color
                                    filled: true,
                                    hintText: "\$",
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(1.0)),
                                    // when border is clicked
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.black, width: 1.0),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  getSizedBox(25.0),
                  Form(
                    key: _formKey1,
                    child: Column(
                      children: <Widget>[
                        expenditureName,
                        expenditureNote,
                        getSizedBox(15.0),
                        saveButton,
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
