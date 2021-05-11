import 'package:flutter/material.dart';
import 'package:quizzerv2/services/database.dart';
import 'package:quizzerv2/widgets/widgets.dart';

class AddQuestion extends StatefulWidget {
  final String quizId;

  AddQuestion({this.quizId});

  @override
  _AddQuestionState createState() => _AddQuestionState();
}

class _AddQuestionState extends State<AddQuestion> {
  final _formKey = GlobalKey<FormState>();
  String question, option1, option2,option3,option4;
  bool _isLoading = false;
  DatabaseService datasbaseService = new DatabaseService();

  uploadQuestiondata()async{


      Map<String,String> questionMap = {
        "question" : question,
        "option1" : option1,
        "option2" : option2,
        "option3" : option3,
        "option4" : option4,
      };
      await datasbaseService.addQuestionData(questionMap, widget.quizId);

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
      body: _isLoading ? Container(
        child: Center(
          child: CircularProgressIndicator(
            backgroundColor: Colors.blueGrey,
          ),
        ),
      ) : Form(
        key: _formKey,
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("asset/henn.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              SizedBox(height: 20,),
              Padding(padding: EdgeInsets.symmetric(horizontal: 24)),
              TextFormField(
                style: TextStyle(color: Colors.white),
                validator: (val) =>
                val.isEmpty ? "Enter Question" : null,
                decoration: InputDecoration(
                  labelText: "Qeestion",
                  prefixIcon: Icon(
                    Icons.create,
                    color: Colors.white,
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white,
                    ),
                  ),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(30.0)),
                  labelStyle: TextStyle(color: Colors.white),
                  hintText: "Enter Question",
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white,
                    ),
                  ),
                  hintStyle: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onChanged: (val) {
                  question = val;
                },
              ),
              SizedBox(
                height: 6,
              ),
              TextFormField(
                style: TextStyle(color: Colors.white),
                validator: (val) =>
                val.isEmpty ? "Enter Option1" : null,
                decoration: InputDecoration(
                  labelText: "Option1",
                  prefixIcon: Icon(
                    Icons.check_circle_rounded,
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
                  hintText: "Enter Option (Correct Answer)",
                  labelStyle: TextStyle(color: Colors.white),
                  hintStyle: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onChanged: (val) {
                  option1 = val;
                },
              ),
              TextFormField(
                style: TextStyle(color: Colors.white),
                validator: (val) =>
                val.isEmpty ? "Enter option2" : null,
                decoration: InputDecoration(
                  labelText: "Option2",
                  prefixIcon: Icon(
                    Icons.add_circle_outlined,
                    color: Colors.white,
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white,
                    ),
                  ),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(30.0)),
                  labelStyle: TextStyle(color: Colors.white),
                  hintText: "option2",
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white,
                    ),
                  ),
                  hintStyle: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onChanged: (val) {
                  option2 = val;
                },
              ),
              SizedBox(
                height: 6,
              ),
              TextFormField(
                style: TextStyle(color: Colors.white),
                validator: (val) =>
                val.isEmpty ? "Enter option3" : null,
                decoration: InputDecoration(
                  labelText: "Option3",
                  prefixIcon: Icon(
                    Icons.add_circle_outlined,
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
                  hintText: "Enter option3",
                  labelStyle: TextStyle(color: Colors.white),
                  hintStyle: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onChanged: (val) {
                  option3 = val;
                },
              ),
              TextFormField(
                style: TextStyle(color: Colors.white),
                validator: (val) =>
                val.isEmpty ? "Enter option4" : null,
                decoration: InputDecoration(
                  labelText: "Option4",
                  prefixIcon: Icon(
                    Icons.add_circle_outlined,
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
                  hintText: "Enter option4",
                  labelStyle: TextStyle(color: Colors.white),
                  hintStyle: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onChanged: (val) {
                  option4 = val;
                },
              ),
              Spacer(),
              Row(
                children: [
                  SizedBox(width: 24,),
                  GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: markov(
                      context: context,
                      label: "Submit",
                      buttonWidth: MediaQuery.of(context).size.width/2 - 36
                    ),
                  ),
                  SizedBox(width: 24,),
                  GestureDetector(
                    onTap: (){
                      uploadQuestiondata();
                    },
                    child: markov(
                        context: context,
                        label: "Add Question",
                        buttonWidth: MediaQuery.of(context).size.width/2 - 36
                    ),
                  ),
                  SizedBox(height: 90,),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
