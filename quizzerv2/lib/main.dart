import 'package:flutter/material.dart';
import 'package:quizzerv2/helper/functions.dart';
import 'package:quizzerv2/views/home.dart';
import 'package:quizzerv2/views/signin.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {

  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  //bool _isLoggedIn = false;

  //@override
  //void initState(){
    //checkUserLoggedInStatus();
    //super.initState();
  //}

  //checkUserLoggedInStatus()async{
  //HelperFunctions.getUserLoggedInDetails().then((value){
      //etState(() {
// _isLoggedIn = value;
//});
//});
  //}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // is not restarted.
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SignIn(),
    );
  }
}
