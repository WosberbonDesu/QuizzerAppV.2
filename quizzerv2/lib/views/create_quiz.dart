import 'package:flutter/material.dart';
import 'package:quizzerv2/services/database.dart';
import 'package:quizzerv2/views/addquestion.dart';
import 'package:quizzerv2/widgets/widgets.dart';
import 'package:random_string/random_string.dart';

class CreateQuiz extends StatefulWidget {
  @override
  _CreateQuizState createState() => _CreateQuizState();
}

  class _CreateQuizState extends State<CreateQuiz> {
  final _formKey = GlobalKey<FormState>();
  String quizImageUrl, quizTitle, quizDescription, quizId;
  DatabaseService databaseService = new DatabaseService();
  bool _isLoading = false;

  createQuiz() async {
          //if (_formKey.currentState.validate()) {
    //setState(() {
    //_isLoading = true;
    //});
    //quizId = randomAlphaNumeric(16);
    Map<String, String> quizMap = {
    "quizId": quizId,
    "quizImgurl": quizImageUrl,
    "quizTitle": quizTitle,
    "quizDescription": quizDescription,
    };
    databaseService.addQuizData(quizMap, quizId);//.then((value) {
    //setState(() {
    //_isLoading = true;
    Navigator.pushReplacement(
    context,
    MaterialPageRoute(
    builder: (context) => AddQuestion(quizId: quizId,),
    )
    );
    //});
    //});
    //}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: sss(context),
        backgroundColor: Colors.blueGrey.shade700,
        elevation: 0.6,
        iconTheme: IconThemeData(color: Colors.black54),
        brightness: Brightness.light,
      ),
      body:  Form(
              key: _formKey,
              child: Container(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("asset/web.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 19,
                      ),
                      TextFormField(
                        style: TextStyle(color: Colors.white),
                        validator: (val) =>
                            val.isEmpty ? "Enter Image URL" : null,
                        decoration: InputDecoration(
                          labelText: "Image",
                          prefixIcon: Icon(
                            Icons.image_outlined,
                            color: Colors.pinkAccent,
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.pinkAccent,
                            ),
                          ),
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.pinkAccent),
                              borderRadius: BorderRadius.circular(30.0)),
                          labelStyle: TextStyle(color: Colors.white),
                          hintText: "Quiz Image URL (Optional)",
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.pinkAccent,
                            ),
                          ),
                          hintStyle: TextStyle(
                            color: Colors.pinkAccent,
                          ),
                        ),
                        onChanged: (val) {
                          quizImageUrl = val;
                        },
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      TextFormField(
                        style: TextStyle(color: Colors.white),
                        validator: (val) =>
                            val.isEmpty ? "Enter Quiz Title" : null,
                        decoration: InputDecoration(
                          labelText: "Title",
                          prefixIcon: Icon(
                            Icons.sort_by_alpha_rounded,
                            color: Colors.white,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white,
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white,
                            ),
                          ),
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(30.0)),
                          hintText: "Enter Quiz Title",
                          labelStyle: TextStyle(color: Colors.white),
                          hintStyle: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        onChanged: (val) {
                          quizTitle = val;
                        },
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      TextFormField(
                        style: TextStyle(color: Colors.white),
                        validator: (val) =>
                        val.isEmpty ? "Enter Quiz ID" : null,
                        decoration: InputDecoration(
                          labelText: "Quiz ID",
                          prefixIcon: Icon(
                            Icons.sort_by_alpha_outlined,
                            color: Colors.white,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white,
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white,
                            ),
                          ),
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(30.0)),
                          hintText: "Enter Quiz ID",
                          labelStyle: TextStyle(color: Colors.white),
                          hintStyle: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        onChanged: (val) {
                          quizId = val;
                        },
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      TextFormField(
                        style: TextStyle(color: Colors.white),
                        validator: (val) =>
                            val.isEmpty ? "Enter Quiz Description" : null,
                        decoration: InputDecoration(
                          labelText: "Description",
                          prefixIcon: Icon(
                            Icons.description,
                            color: Colors.white,
                          ),
                          labelStyle: TextStyle(color: Colors.white),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white,
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white,
                            ),
                          ),
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(30.0)),
                          hintText: "Quiz Description",
                          hintStyle: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        onChanged: (val) {
                          quizDescription = val;
                        },
                      ),
                      Spacer(),
                      GestureDetector(
                          onTap: () {
                            createQuiz();
                          },
                          child: blueButton(context, "Create Quiz")),
                      SizedBox(
                        height: 50.0,
                      ),
                    ],
                  ),
                ),
              ),
            ),
    );
  }
}

