import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quizzerv2/services/database.dart';
import 'package:quizzerv2/views/create_quiz.dart';
import 'package:quizzerv2/views/play_quiz.dart';
import 'package:quizzerv2/widgets/widgets.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Stream quizStream;
  DatabaseService databaseService = new DatabaseService();
  int i = 0;
  String img;

  Widget quizList(){
    return Container(
      child: StreamBuilder(
        stream: quizStream,
        builder: (context, snapshot){
          return snapshot.data == null
          ? Container(
            width: 500,
            height: 2000,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "asset/arc.jpg"
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Center(
              child: CircularProgressIndicator(),
            ),
          ) : Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    "asset/asf.jpg"
                ),
                fit: BoxFit.cover,
              ),
            ),

            child: ListView.builder(

              itemCount: snapshot.data.documents.length,
                shrinkWrap: true,
                itemBuilder: (context, index){
                  i += 1;

                  if ( i % 2 == 0){
                    img = "https://images.unsplash.com/photo-1494022299300-899b96e49893?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80";

                  }
                  else if(i % 5 == 0 ){
                    img = "https://images.unsplash.com/photo-1620376644627-52b389f5edde?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1191&q=80";
                  }
                  else if(i % 7 == 0 ){
                    img = "https://images.unsplash.com/photo-1473654729523-203e25dfda10?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80";
                  }
                  else{
                    img = "https://images.unsplash.com/photo-1471923373921-461fdb6de4e5?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1069&q=80";
                  }

                  return QuizTile(
                      noOfQuestions: snapshot.data.documents.length,
                      imgUrl: snapshot.data.documents[index].data["quizImgUrl"],
                      title: snapshot.data.documents[index].data["quizDescription"],
                      description: snapshot.data.documents[index].data["quizTitle"],
                      img: img,
                      quizId: snapshot.data.documents[index].data["quizId"],
                  );
                }
            ),
          );
        },
      ),
    );
  }

  @override
  void initState() {
    databaseService.getQuizezData().then((val){
      setState(() {
        quizStream = val;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: appBar(context),
        backgroundColor: Colors.blueGrey.shade700,
        elevation: 0.6,
        brightness: Brightness.light,
      ),
      body: quizList(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.blueGrey.shade700,
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => CreateQuiz()));
        },
      ),
    );
  }
}


class QuizTile extends StatelessWidget {
  int i = 0;
  final String imgUrl;
  final String title;
  final String description;
  final String quizId;
  final int noOfQuestions;
  String img;
  QuizTile({@required this.imgUrl,@required  this.title,@required this.description,this.img,@required this.quizId,@required this.noOfQuestions});
  @override
  Widget build(BuildContext context) {
    SizedBox(width: 29,);

    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(
            builder: (context) => QuizPlay(
              quizId
            ),
        ));
      },
      child: Center(
        child: Container(
          margin: EdgeInsets.only(bottom: 8),
            height: 220,
          child: Stack(

            children: [
              SizedBox(height: 20,),
              ClipRRect(
                borderRadius: BorderRadius.circular(10),

                  child: Image.network(img,width: MediaQuery.of(context).size.width-70,
                  )),

              SizedBox(height: 20,),
              Container(
                //261431
                height: 180,





                color: Colors.black12,


                child: Column(

                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("                         $title",style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),),
                    SizedBox(height: 6,),
                    Text("$description",style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),),
                  ],




                ),

              ),
            ],
          ),
        ),
      ),
    );
  }
}
