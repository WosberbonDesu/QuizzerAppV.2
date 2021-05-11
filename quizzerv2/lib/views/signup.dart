import 'package:flutter/material.dart';
import 'package:quizzerv2/services/auth.dart';
import 'package:quizzerv2/views/home.dart';
import 'package:quizzerv2/views/signin.dart';
import 'package:quizzerv2/widgets/widgets.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formKey = GlobalKey<FormState>();
  String email;
  String password;
  String name;
  AuthService authService = new AuthService();
  bool _isLoading = false;

  signUp() async {
    if (_formKey.currentState.validate()) {
      setState(() {
        _isLoading = true;
      });
      authService.signUpWithEmailAndPassword(email, password).then((value) {
        if (value != null) {
          setState(() {
            _isLoading = false;
          });
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => Home()));
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: appBar(context),
        backgroundColor: Colors.blueGrey.shade700,
        elevation: 1,
        brightness: Brightness.light,
      ),
      body: _isLoading
          ? Container(
              child: Center(
                child: CircularProgressIndicator(),
              ),
            )
          : Form(
              key: _formKey,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      "asset/b.jpg",
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  children: <Widget>[
                    Spacer(),
                    TextFormField(
                      style: TextStyle(color: Colors.white),
                      validator: (val) {
                        return val.isEmpty ? "Enter Name" : null;
                      },
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        labelText: "Name",
                        hintText: "Name",
                        hintStyle: TextStyle(color: Colors.white),
                        prefixIcon: Icon(
                          Icons.drive_file_rename_outline,
                          color: Colors.white,
                        ),
                        labelStyle: TextStyle(color: Colors.white),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                          ),
                        ),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(30.0)),
                      ),
                      onChanged: (val) {
                        name = val;
                      },
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    TextFormField(
                      style: TextStyle(color: Colors.white),
                      validator: (val) {
                        return val.isEmpty ? "Enter Valid Email" : null;
                      },
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        labelText: "Email",
                        hintText: "Email",
                        hintStyle: TextStyle(color: Colors.white),
                        prefixIcon: Icon(
                          Icons.person,
                          color: Colors.white,
                        ),
                        labelStyle: TextStyle(color: Colors.white),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                          ),
                        ),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(30.0)),
                      ),
                      onChanged: (val) {
                        email = val;
                      },
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    TextFormField(
                      obscureText: true,
                      style: TextStyle(color: Colors.white),
                      validator: (val) {
                        return val.isEmpty ? "Enter Valid Password" : null;
                      },
                      decoration: InputDecoration(
                        labelText: "Password",
                        hintText: "Password",
                        hintStyle: TextStyle(color: Colors.white),
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Colors.white,
                        ),
                        labelStyle: TextStyle(color: Colors.white),
                        fillColor: Colors.white,
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                          ),
                        ),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(30.0)),
                      ),
                      onChanged: (val) {
                        password = val;
                      },
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    GestureDetector(
                      onTap: () {
                        signUp();
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 16),
                        decoration: BoxDecoration(
                          color: Colors.blue.shade900,
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        alignment: Alignment.center,
                        width: MediaQuery.of(context).size.width,
                        child: Text(
                          "Sign Up",
                          style: TextStyle(color: Colors.white, fontSize: 16.0),
                        ),
                        margin: new EdgeInsets.symmetric(horizontal: 25.0),
                      ),
                    ),
                    SizedBox(
                      height: 24.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Already have an account? ",
                          style: TextStyle(
                            fontSize: 15.5,
                            color: Colors.white,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SignIn(),
                                ));
                          },
                          child: Text(
                            "Sign up ",
                            style: TextStyle(
                              fontSize: 15.5,
                              color: Colors.blueAccent,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 80.0,
                    ),
                  ],
                ),
              ),
            ),
    );
  }
}
