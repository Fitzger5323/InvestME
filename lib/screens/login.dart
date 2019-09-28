import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app/widgets/reusableWidgets.dart';


class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // required for all forms
  static final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Used for text style / can change for whatever app style we choose
    TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);

    // controls starting point for content widgets
    double startHeight = MediaQuery.of(context).size.height / 4;

    // LOGIN BUTTON
    final loginButton = Material(
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
        child: Text("Login",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );
    // END LOGIN BUTTON

    // NAVIGATION SIGN UP PAGE
    final linkToSignUp = Align(
      // move to the left of the container
      alignment: Alignment.centerLeft,
      child: Row(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text(
              "Don't have an account?",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          InkWell(
              child: Text(
                "Sign up!",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              // Function to navigate to the sign up page
              onTap: () {
                /* Navigator.push(
                  context, MaterialPageRoute(
                  builder: (context) => SignUp()
                ),
                );*/
              }),
        ],
      ),
    );
    // END NAVIGATION SIGN UP PAGE

    // NAVIGATION TO FORGOTPASSWORD PAGE
    final linkToForgotPassword = Align(
      alignment: Alignment.centerRight,
      child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: InkWell(
            child: Text(
              "Forgot your password?",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            onTap: () {}, // Ripple effect will appear upon implementation
          )),
    );
    // END NAVIGATION TO FORGOTPASSWORD PAGE

    // build app
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            // Container to take up the entire screen
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/background_login.png"),
                  fit: BoxFit.fill),
            ),
            child: Padding(
              padding: const EdgeInsets.all(36.0),
              child: Column(
                // placing of children in layout
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  // Start app content
                  getSizedBox(startHeight),
                  getTitle(),
                  getTextCaption(),
                  Form(
                    // MUST have form key for validation
                    key: _formKey,
                    child: Column(
                      children: <Widget>[
                        // spacing
                        getSizedBox(10.0),
                        // email widget
                        getEmailField(),
                        // spacing
                        getSizedBox(2.0),
                        // email widget
                        getPasswordField(),
                        //Navigate to Forgot Password
                        linkToForgotPassword,
                        // spacing
                        getSizedBox(30.0),
                      ],
                    ),
                  ),
                  loginButton,
                  linkToSignUp,
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
